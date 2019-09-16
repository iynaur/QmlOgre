CONFIG += qt
QT += qml quick
TEMPLATE = app
TARGET = qmlogre

LIBS += -L../lib -lqmlogre
LIBS += -lboost_system

UI_DIR = ./.ui
OBJECTS_DIR = ./.obj
MOC_DIR = ./.moc

SOURCES += main.cpp \
    cameranodeobject.cpp \
    exampleapp.cpp

HEADERS += cameranodeobject.h \
    exampleapp.h

OTHER_FILES += \
    resources/example.qml

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += OGRE
}

RESOURCES += resources/resources.qrc

# Copy all resources to build folder
Resources.path = $$OUT_PWD/resources
Resources.files = resources/*.zip

# Copy all config files to build folder
Config.path = $$OUT_PWD
Config.files = config/*

# make install
INSTALLS += Resources Config
