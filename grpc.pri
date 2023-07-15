grpc_root_dir = /home/zenghui/polyseq/qt5152_vcpkg_grpc/vcpkg-libs/installed/x64-linux

grpc_lib = $${grpc_root_dir}/lib

INCLUDEPATH += $${grpc_root_dir}/include \
               $${grpc_root_dir}
DEPENDPATH  += $${grpc_root_dir}/include \
               $${grpc_root_dir}

HEADERS += $$PWD/example.grpc.pb.h \
           $$PWD/example.pb.h
SOURCES += $$PWD/example.grpc.pb.cc \
           $$PWD/example.pb.cc

LIBS += -L$${grpc_lib} \
    -lgrpc++_unsecure \
    -lgrpc++_reflection \
    -lgrpc++_error_details \
    -lgrpc++_alts \
    -lgrpc_plugin_support \
    -lgrpcpp_channelz \
    -lgrpc_unsecure \
    -lgrpc \
    -laddress_sorting \
    -lcares \
    -lprotobuf \
    -lprotobuf-lite \
    -lprotoc \
    -lre2 \
    -lupb \
    -labsl_cordz_info \
    -labsl_cordz_sample_token \
    -labsl_cordz_handle \
    -labsl_cordz_functions \
    -labsl_cord_internal \
    -labsl_cord \
    -labsl_stacktrace \
    -labsl_civil_time \
    -labsl_time_zone \
    -labsl_time \
    -labsl_examine_stack \
    -labsl_symbolize \
    -labsl_hash \
    -labsl_strings \
    -labsl_str_format_internal \
    -labsl_strings_internal \
    -labsl_periodic_sampler \
    -labsl_exponential_biased \
    -labsl_random_distributions \
    -labsl_random_internal_distribution_test_util \
    -labsl_random_internal_platform \
    -labsl_random_internal_pool_urbg \
    -labsl_random_internal_randen \
    -labsl_random_internal_randen_hwaes \
    -labsl_random_internal_randen_hwaes_impl \
    -labsl_random_internal_randen_slow \
    -labsl_random_internal_seed_material \
    -labsl_random_seed_gen_exception \
    -labsl_random_seed_sequences \
    -labsl_log_severity \
    -labsl_strerror \
    -labsl_status \
    -labsl_statusor \
    -labsl_throw_delegate \
    -labsl_failure_signal_handler \
    -labsl_leak_check \
    -labsl_demangle_internal \
    -labsl_debugging_internal \
    -labsl_graphcycles_internal \
    -labsl_spinlock_wait \
    -labsl_synchronization \
    -labsl_base \
    -labsl_malloc_internal \
    -labsl_low_level_hash \
    -labsl_raw_logging_internal \
    -labsl_raw_hash_set \
    -labsl_flags \
    -labsl_flags_commandlineflag \
    -labsl_flags_commandlineflag_internal \
    -labsl_flags_config \
    -labsl_flags_internal \
    -labsl_flags_marshalling \
    -labsl_flags_parse \
    -labsl_flags_private_handle_accessor \
    -labsl_flags_program_name \
    -labsl_flags_reflection \
    -labsl_flags_usage \
    -labsl_flags_usage_internal \
    -lssl \
    -lcrypto \
    -lgpr \
    -lz


message($${grpc_lib})
message($$LIBS)
