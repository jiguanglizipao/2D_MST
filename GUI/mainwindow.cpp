#include "mainwindow.h"

#include <QApplication>
#include <QAction>
#include <QCloseEvent>
#include <QMessageBox>
#include <QSettings>
#include <QSplitter>
#include <QStyleFactory>
#include <QToolBar>
#include <QDebug>
#include <QMenuBar>
#include <QTime>
#include <QTimer>
#include <QProgressDialog>
#include <QLCDNumber>
#include <QHBoxLayout>
#include <QVariant>
#include <cmath>
#include <cstring>
#include <algorithm>

#include "nodectrl.h"
#include "mainctrl.h"
#include "propertyeditor.h"
#include "relarankgraph/baseedge.h"
#include "relarankgraph/edgearrow.h"
#include "relarankgraph/edgelabel.h"
#include "relarankgraph/node.h"
#include "relarankgraph/nodelabel.h"
#include "relarankgraph/perimeter.h"
#include "relarankgraph/plug.h"
#include "relarankgraph/pluglabel.h"
#include "relarankgraph/scene.h"
#include "relarankgraph/view.h"
using namespace std;

MainWindow::MainWindow(QWidget * parent): QMainWindow(parent)
{
    this->resize(1366, 768);
    // create the main toolbar
    //QMenuBar* mainMenuBar = new QMenuBar(this);
    QToolBar *
    mainToolBar = new QToolBar("ToolBar", this);
    //this->setMenuBar(mainMenuBar);
    //mainToolBar->setStyleSheet("QToolBar {border: 0px;}");
    //mainToolBar->setIconSize(QSize(12,12));
    mainToolBar->setMovable(false);
    mainToolBar->setToolButtonStyle(Qt::ToolButtonTextBesideIcon);
    addToolBar(Qt::TopToolBarArea, mainToolBar);
    // create global actions
    QAction *newNodeAction = new QAction(QIcon(":/icons/incoming.png"), tr("&Open"), this);
    newNodeAction->setShortcuts(QKeySequence::Open);
    newNodeAction->setStatusTip(tr("Open the file"));
    mainToolBar->addAction(newNodeAction);
    connect(newNodeAction, SIGNAL(triggered()), this, SLOT(openfile()));
    QAction *calcAction = new QAction(QIcon(":/icons/plus.png"), tr("&Calculate"), this);
    calcAction->setStatusTip(tr("Calculate"));
    calcAction->setShortcuts(QKeySequence::Copy);
    mainToolBar->addAction(calcAction);
    connect(calcAction, SIGNAL(triggered()), this, SLOT(calculate()));
    QAction *saveAction = new QAction(QIcon(":/icons/play.png"), tr("&Save"), this);
    saveAction->setStatusTip(tr("Save"));
    saveAction->setShortcuts(QKeySequence::Save);
    mainToolBar->addAction(saveAction);
    connect(saveAction, SIGNAL(triggered()), this, SLOT(savefile()));
    QAction *closeAction = new QAction(QIcon(":/icons/outgoing.png"), tr("E&xit"), this);
    closeAction->setStatusTip(tr("Exit"));
    closeAction->setShortcuts(QKeySequence::Close);
    mainToolBar->addAction(closeAction);
    connect(closeAction, SIGNAL(triggered()), this, SLOT(close()));
    QAction * aboutAction = new QAction(QIcon(":/icons/questionmark.png"), tr("&About"), this);
    aboutAction->setStatusTip(tr("About this application"));
    mainToolBar->addAction(aboutAction);
    connect(aboutAction, SIGNAL(triggered()), this, SLOT(displayAbout()));
    // create the status bar
    statusBar();
    // create the RelaRank graph
    relarankScene = new relarank::Scene(this);
    relarankView = new relarank::View(this);
    relarankView->setScene(relarankScene);
    // create the Property Editor
    propertyEditor = new PropertyEditor(this);
    // create the Main Controller
    ranklist = new RankList(this);
    // create the Node List
    m_mainCtrl = new MainCtrl(this, relarankScene, propertyEditor);
    // setup the main splitter
    m_mainSplitter = new QSplitter(Qt::Horizontal, this);
    m_mainSplitter->addWidget(propertyEditor);
    m_mainSplitter->addWidget(relarankView);
    m_mainSplitter->addWidget(ranklist);
    m_mainSplitter->setSizes({200, 900, 200});
    kruskal = NULL;
    // initialize the GUI
    setCentralWidget(m_mainSplitter);
}

void MainWindow::closeEvent(QCloseEvent * event)
{
    if (m_mainCtrl->shutdown()) {
        // if the user accepted, close the application
        //writeSettings();
        event->accept();
    } else {
        // if the user objected, do nothing
        event->ignore();
    }
}

void MainWindow::displayAbout()
{
    QMessageBox aboutBox(this);
    aboutBox.setToolTip("About this Application");
    aboutBox.setText("<h2>2D_MST</h2>"
                     "<p>2D_MST is an application for constructing minimum spanning trees in 2D-map.</p>"
                     "<h4>By: </h4><p>&nbsp;&nbsp;&nbsp;&nbsp;Jiguanglizipao<br></p>"
                     "<h4>Website: </h4><p><a href=https://github.com/jiguanglizipao/2d_mst>hhttps://github.com/jiguanglizipao/2d_mst</a></p>");
    aboutBox.setIconPixmap(QPixmap(":/icons/zerg.png"));
    aboutBox.exec();
}

void MainWindow::openfile()
{
    QString fileName = QFileDialog::getOpenFileName(this, tr("Open Files"), "", tr("Map Files(*.map);;All Files(*.*)"));
    if (fileName == "") return;
    QFile file(fileName);
    if (!file.open(QFile::ReadOnly | QFile::Text)) {
        QMessageBox::critical(this, tr("ERROR!"), tr("Can not open this fils. %1").arg(fileName));
        return;
    }
    file.close();
    if(kruskal != NULL) delete kruskal;
    kruskal = new Kruskal(fileName);
    kruskal->calc();
    clearsta();
    printsta(m_mainCtrl, kruskal->get_node(), kruskal->get_edge());
}

void MainWindow::calculate()
{
    if(kruskal == NULL)return;
    clearsta();
    QDialog *ans = new QDialog(this, Qt::WindowCloseButtonHint);
    ans->setWindowTitle("MST Answer");
    ans->setAutoFillBackground(true);
    ans->setPalette(QPalette(Qt::white));
    QLCDNumber *LCD = new QLCDNumber(ans);
    LCD->setDigitCount(20);
    LCD->display(kruskal->get_ans());
    QHBoxLayout *layout = new QHBoxLayout(ans);
    ans->setLayout(layout);
    layout->addWidget(LCD);
    ans->resize(600, 100);
    ans->show();
    printsta(m_mainCtrl, kruskal->get_node(), kruskal->get_ansedge());
}

void MainWindow::savefile()
{
    QString fileName = QFileDialog::getSaveFileName(this, tr("Save Files"), "", tr("PNG Files(*.png);;All Files(*.*)"));
    kruskal->print(fileName);
}

void MainWindow::clearsta()
{
    for (vector < NodeCtrl * >::const_iterator i = nodectrl.begin();
         i != nodectrl.end(); i++) {
        if(*i != NULL)(*i)->remove();
        delete *i;
    }
    nodectrl.clear();
    delete m_mainCtrl;
    delete relarankView;
    delete relarankScene;
    delete propertyEditor;
    delete m_mainSplitter;
    relarankScene = new relarank::Scene(this);
    relarankView = new relarank::View(this);
    relarankView->setScene(relarankScene);
    propertyEditor = new PropertyEditor(this);
    ranklist = new RankList(this);
    m_mainCtrl = new MainCtrl(this, relarankScene, propertyEditor);
    m_mainSplitter = new QSplitter(Qt::Horizontal, this);
    m_mainSplitter->addWidget(propertyEditor);
    m_mainSplitter->addWidget(relarankView);
    m_mainSplitter->addWidget(ranklist);
    m_mainSplitter->setSizes({200, 900, 200});
    setCentralWidget(m_mainSplitter);
}

void MainWindow::printsta(MainCtrl * mainCtrl, vector<graph_node>& node, vector<graph_edge>& edge)
{
    QProgressDialog progress_dialog("    Loading graph file...    ", "Cancel", 0, node.size() + edge.size(), this);
    progress_dialog.show();
    qApp->processEvents();
    nodectrl.assign(node.size(), NULL);
    for (vector < graph_node >::const_iterator i = node.begin(); i != node.end(); i++) {
        progress_dialog.setValue(i - node.begin());
        QVariant name(int(i-node.begin()+1)), x(int(i->get_x())), y(int(i->get_y()));
        nodectrl[i-node.begin()]=mainCtrl->createNode(name.toString()+" at ("+x.toString()+", "+y.toString()+")");
        nodectrl[i-node.begin()]->getNodeHandle().setPos(i->get_x()*70, -i->get_y()*70);
        qApp->processEvents();
        if (progress_dialog.wasCanceled()) {
            break;
        }
    }
    ranklist->changelist(edge, nodectrl);
    for (vector < graph_edge >::const_iterator i = edge.begin(); i != edge.end(); i++) {
        progress_dialog.setValue(node.size() + i - edge.begin());
        QVariant from(i->get_x()+1), to(i->get_y()+1), value(i->get_w());
        relarank::PlugHandle x = nodectrl[i->get_x()]->addOutgoingPlug("Out to " + to.toString() + " Value = " + value.toString());
        relarank::PlugHandle y = nodectrl[i->get_y()]->addIncomingPlug("In from " + from.toString() + " Value = " + value.toString());
        x.connectPlug(y);
        y = nodectrl[i->get_x()]->addIncomingPlug("In from " + to.toString() + " Value = " + value.toString());
        x = nodectrl[i->get_y()]->addOutgoingPlug("Out to " + from.toString() + " Value = " + value.toString());
        x.connectPlug(y);
        qApp->processEvents();
        if (progress_dialog.wasCanceled()) {
            return;
        }
    }
    progress_dialog.accept();
}
