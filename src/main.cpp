#include <QApplication>
#include "MainWindow.h"
#include "ObjLoader.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
//     hand control over to Qt framework
    return a.exec();
}
