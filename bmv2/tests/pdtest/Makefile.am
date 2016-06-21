if BMV2_TEST_ENV

check_PROGRAMS = pdtest

pdtest_SOURCES = pdtest.cpp \
../thrift_endpoint/src/server.cpp

pdtest_CPPFLAGS = -I$(includedir)
pdtest_CPPFLAGS += -I$(srcdir)/../thrift_endpoint
pdtest_CPPFLAGS += -I$(builddir)/../../pdtest
pdtest_CPPFLAGS += -I$(top_srcdir)/pdfixed

if P4THRIFT
    pdtest_CPPFLAGS += -DP4THRIFT
endif

pdtest_LDFLAGS = -L$(libdir)
pdtest_LDFLAGS += -pthread
pdtest_LDADD = $(builddir)/../../libpd.la -lbmpdfixed
# TODO(antonin): is there a way to avoid having to do this?
pdtest_LDADD += -lruntimestubs -lsimpleswitch_thrift
pdtest_LDADD += $(THRIFT_LIB)

TESTS = ./run_tests.sh

else

check-local:
	@echo "================================================="
	@echo "No bmv2 tests can run if configure was not run with the \
	appropriate environment."
	@echo "================================================="

endif
