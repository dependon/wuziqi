#include "mainwindow.h"
#include <QApplication>
#include <QDir>
#include <QDirIterator>
#include <QTranslator>
#define TRANSALTIONPATH "/usr/share/QtWuziqi/translations"
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QDir dir(TRANSALTIONPATH);
    if (dir.exists()) {
        QDirIterator qmIt(TRANSALTIONPATH, QStringList() << QString("*%1.qm").arg(QLocale::system().name()), QDir::Files);
        while (qmIt.hasNext()) {
            qmIt.next();
            QFileInfo finfo = qmIt.fileInfo();
            QTranslator *translator = new QTranslator;
            if (translator->load(finfo.baseName(), finfo.absolutePath())) {
                qApp->installTranslator(translator);
            }
        }
    }
    MainWindow w;
    w.show();

    return a.exec();
}
