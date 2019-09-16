CONFIG += qt
QT += qml quick
TEMPLATE = lib
TARGET = qmlogre

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += OGRE
}

UI_DIR = ./.ui
OBJECTS_DIR = ./.obj
MOC_DIR = ./.moc


SOURCES += ogreitem.cpp \
    ogrenode.cpp \
    ogrecamerawrapper.cpp \
    ogreengine.cpp

HEADERS += \
    ogreitem.h \
    ogrenode.h \
    ogrecamerawrapper.h \
    ogreengine.h

# Copy all headers to build folder
Headers.path = $$OUT_PWD/include
Headers.files = $$files(*.h)
INSTALLS += Headers
