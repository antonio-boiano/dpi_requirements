wget -qN https://github.com/ntop/nDPI/archive/3.2.tar.gz
tar xfz 3.2.tar.gz
cd nDPI-3.2 && ./autogen.sh && ./configure && make && sudo make install
cd ..
