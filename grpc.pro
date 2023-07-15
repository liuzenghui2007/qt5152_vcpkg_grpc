QT = core

CONFIG += c++17 cmdline

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    example.grpc.pb.cc \
    example.pb.cc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target





DISTFILES += \
    example.proto

HEADERS += \
    example.grpc.pb.h \
    example.pb.h

unix{
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_synchronization.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_strings.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_symbolize.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_time.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_base.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libgpr.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_stacktrace.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_cordz_info.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_random_internal_randen_hwaes_impl.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_crc_cord_state.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/libabsl_hash.a
   LIBS += /home/zenghui/vcpkg/installed/x64-linux/lib/*.a

   INCLUDEPATH += /home/zenghui/vcpkg/installed/x64-linux/include
}

unix:!macx {
    VCPKG_LIBS_DIR = $$PWD/vcpkg-libs/installed/x64-linux/lib
    VCPKG_INCLUDE_DIR = $$PWD/vcpkg-libs/installed/x64-linux/include

    LIBS += -L$$VCPKG_LIBS_DIR \
            -labsl_synchronization \
            -labsl_strings \
            -labsl_symbolize \
            -labsl_time \
            -labsl_base \
            -lgpr \
            -labsl_stacktrace \
            -labsl_cordz_info \
            -labsl_cordz_info \
            -labsl_hash \
            -labsl_random_internal_randen_hwaes_impl \
            -labsl_crc_cord_state
    LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/lib*.a
    INCLUDEPATH += $$VCPKG_INCLUDE_DIR
}
