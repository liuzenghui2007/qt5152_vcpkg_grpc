QT = core

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


unix:!macx: INCLUDEPATH += $$PWD/vcpkg-libs/installed/x64-linux/include

HEADERS += \
    example.grpc.pb.h \
    example.pb.h

SOURCES += \
    example.grpc.pb.cc \
    example.pb.cc


unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_synchronization.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_strings.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_symbolize.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_time.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_base.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libgpr.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libabsl_stacktrace.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libgrpc.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/libgrpc++.a
unix:!macx: LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/*.a

