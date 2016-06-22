#!/bin/bash
set -e
git clone https://github.com/p4lang/p4ofagent.git p4ofagent_tmp
cd p4ofagent_tmp
git submodule update --init --recursive
./autogen.sh
./configure
make CFLAGS=-D_BMV2_ p4ofagent
make install
cd ..
rm -rf p4ofagent_tmp
