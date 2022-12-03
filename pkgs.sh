yum install -y dos2unix java-1.7.0-openjdk-devel glibc glibc.i686 glibc.x86_64 glibc-2.1.7 libaio gcc gcc-c++ strace ltrace gdb compat-libtermcap vim-enhanced ncurses* sysstat dstat unixODBC compat-libstdc++-33.x86_64 libaio-devel.x86_64 make openssl
yum install -y glibc-devel.i686 glibc* libquadmath*
ln -s /usr/lib64/libncurses.so.5.9 /usr/lib/libtermcap.so
ln -s /usr/lib64/libncurses.so.5.9 /usr/lib/libtermcap.so.2

cd /lib64 && ln -s libtinfo.so.5 libtermcap.so.2
cd /lib64 && ln -s libodbc.so.2 libodbc.so.1
