if BMV2_TEST_ENV

check_PROGRAMS = oftest

oftest_SOURCES = oftest.cpp \
../thrift_endpoint/src/server.cpp

oftest_CPPFLAGS = -I$(includedir)
oftest_CPPFLAGS += -I$(srcdir)/../thrift_endpoint
oftest_CPPFLAGS += -I$(builddir)/../../oftest
oftest_CPPFLAGS += -I$(top_srcdir)/pdfixed

if P4THRIFT
    oftest_CPPFLAGS += -DP4THRIFT
endif

oftest_LDFLAGS = -L$(libdir)
oftest_LDFLAGS += -pthread
oftest_LDADD = $(builddir)/../../libof.la $(builddir)/../../libpd.la -lbmpdfixed
# TODO(pierce): is there a way to avoid having to do this?
oftest_LDADD += -lruntimestubs -lsimpleswitch_thrift
oftest_LDADD += $(THRIFT_LIB)

TESTS = ./run_tests.sh

else

check-local:
	@echo "================================================="
	@echo "No bmv2 tests can run if configure was not run with the \
	appropriate environment."
	@echo "================================================="

endif
