#include "mainwindow.h"

#include <QApplication>
#include <QFile>
#include <QTextStream>
using namespace std;
int main(int argc, char *argv[])
{
    // create application
    QApplication app(argc, argv);
    app.setOrganizationName("Holy High Point");
    app.setOrganizationDomain("github.com/holyhighpoint");
    app.setApplicationName("2D_MST");
    app.setWindowIcon(QIcon(":/icons/Relarank.png"));
    MainWindow window;
    window.show();
    return app.exec();
}
