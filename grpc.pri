SOURCES += example.grpc.pb.cc \
    example.pb.cc

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
            -labsl_random_internal_randen_hwaes_impl \
            -labsl_hash \
            -labsl_crc_cord_state \
            -labsl_crc_cord_state


    LIBS += $$PWD/vcpkg-libs/installed/x64-linux/lib/lib*.a
    INCLUDEPATH += $$VCPKG_INCLUDE_DIR
}
