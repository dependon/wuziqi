#-------------------------------------------------
#
# Project created by QtCreator 2016-12-22T10:50:43
#
#-------------------------------------------------

QT       += core gui multimedia

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtWuziqi
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    GameModel.cpp

HEADERS  += mainwindow.h \
    GameModel.h

RESOURCES += \
    resource.qrc
TRANSLATIONS += \
    translations/QtWuziqi_zh_CN.ts

APPSHAREDIR = /usr/share/QtWuziqi

translations.path = $$APPSHAREDIR/translations
translations.files = $$PWD/translations/*.qm

unix:!android: target.path = /usr/bin

desktop.path = /usr/share/applications/
desktop.files = $$PWD/install/QtWuziqi.desktop

icon.path =/usr/share/icons
icon.files=$$PWD/install/QtWuziqi.png

!isEmpty(target.path): INSTALLS += target icon desktop translations
