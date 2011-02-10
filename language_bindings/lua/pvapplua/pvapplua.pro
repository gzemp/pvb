######################################################################
# generated by pvdevelop at: Mi Nov 8 11:58:45 2006
######################################################################

TEMPLATE = app
CONFIG   = warn_on release qt
QT      += sql
DEFINES += LUA

# Input
SOURCES     += main.cpp                                   \
               ../../language_binding_rllib_wrap_lua.cxx

!macx {
unix:INCLUDEPATH   += ../../../pvserver
unix:LIBS          += ../../../rllib/lib/librllib.so
unix:INCLUDEPATH   += ../../../rllib/lib
unix:LIBS          += ${liblua} \
                      -ldl
}

macx:INCLUDEPATH   += ../../../pvserver
macx:LIBS          += ../../../rllib/lib/librllib.dylib
macx:INCLUDEPATH   += ../../../rllib/lib

win32-g++ {
QMAKE_LFLAGS       += -static-libgcc
win32:LIBS         += ../../../win-mingw/bin/librllib.a
win32:LIBS         += $(MINGWDIR)/lib/libws2_32.a $(MINGWDIR)/lib/libadvapi32.a
win32:INCLUDEPATH  += ../../../rllib/lib
win32:INCLUDEPATH  += ../../../../lua/lua-5.1/src
win32:LIBS         += ../../../../lua/lua-5.1/src/liblua.a
}

#DEFINES += USE_INETD
TARGET = pvapplua
