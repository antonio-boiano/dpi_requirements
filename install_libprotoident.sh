#!/bin/bash -e

## Clone and compile DPI dependencies from source

sudo apt update
sudo apt install -y libpcap-dev software-properties-common ca-certificates liblzo2-2 libkeyutils-dev
sudo update-ca-certificates
sudo apt-get install -y apt-transport-https curl lsb-release wget autogen autoconf libtool gcc libpcap-dev linux-headers-generic git vim automake libtool make g++ bison flex cmake binutils binutils-doc gcc-doc cmake-doc extra-cmake-modules autoconf pkg-config libconfig-dev

wget -qN https://github.com/wanduow/wandio/archive/4.2.2-1.tar.gz
tar xfz 4.2.2-1.tar.gz
cd wandio-4.2.2-1 && ./bootstrap.sh && ./configure && make && sudo make install
cd ..

wget -qN https://github.com/LibtraceTeam/libtrace/archive/4.0.11-1.tar.gz
tar xfz 4.0.11-1.tar.gz
cd libtrace-4.0.11-1 && ./bootstrap.sh && ./configure && make && sudo make install
cd ..

wget -qN https://github.com/wanduow/libflowmanager/archive/3.0.0.tar.gz
tar xfz 3.0.0.tar.gz
cd libflowmanager-3.0.0 && ./bootstrap.sh && ./configure && make && sudo make install
cd ..

wget -qN https://github.com/wanduow/libprotoident/archive/2.0.14-1.tar.gz
tar xfz 2.0.14-1.tar.gz
cd libprotoident-2.0.14-1 && ./bootstrap.sh && ./configure && make && sudo make install
cd ..
