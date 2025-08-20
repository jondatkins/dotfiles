#!/bin/bash
wget http://monkey.org/~provos/libevent-1.4.14b-stable.tar.gz
tar xzf libevent-1.4.14b-stable.tar.gz
cd libevent-1.4.14b-stable
./configure --prefix=/opt/libevent
make
make install
