#include "mainwindow.h"

#include <QApplication>
#include <QFile>
#include <QTextStream>
using namespace std;
int main(int argc, char *argv[])
{
    // create application
    QApplication app(argc, argv);
    app.setOrganizationName("Jiguanglizipao");
    app.setOrganizationDomain("github.com/Jiguanglizipao");
    app.setApplicationName("2D_MST");
    app.setWindowIcon(QIcon(":/icons/2D_MST.png"));
    MainWindow window;
    window.show();
    return app.exec();
}
