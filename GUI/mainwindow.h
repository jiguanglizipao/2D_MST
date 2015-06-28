#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QFileDialog>
#include "graph.h"
#include "kruskal.h"
#include "ranklist.h"
#include "nodectrl.h"
#include "propertyeditor.h"
#include "relarankgraph/scene.h"
#include "relarankgraph/view.h"
class MainCtrl;
class PropertyEditor;
class QSplitter;

class MainWindow: public QMainWindow
{
    Q_OBJECT
public:		// methods

    MainWindow(QWidget * parent = 0);

protected:			// methods

    void closeEvent(QCloseEvent * event);

private slots:
    void displayAbout();

public slots:
    void openfile();
    void savefile();
    void calculate();

private:			// methods

    void readSettings();

    void writeSettings();

    void printsta(MainCtrl * mainCtrl, std::vector<graph_node>& node, std::vector<graph_edge>& edge);
    void clearsta();
    Kruskal *kruskal;
    std::vector < NodeCtrl * >nodectrl;
    relarank::Scene * relarankScene;
    relarank::View * relarankView;
    PropertyEditor *propertyEditor;
    RankList * ranklist;

private:			// members

    MainCtrl * m_mainCtrl;

    QSplitter *m_mainSplitter;

};

#endif // MAINWINDOW_H
