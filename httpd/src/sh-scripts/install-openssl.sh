#### Install OpenSSL openssl-1.0.2t
yum install make -y
yum install libtool perl-core zlib-devel -y
cd /usr/local/src
curl -O -L https://github.com/openssl/openssl/archive/OpenSSL_1_0_2t.tar.gz
tar -zxvf OpenSSL_1_0_2t.tar.gz
cd openssl-OpenSSL_1_0_2t
./config --prefix=/usr/local/openssl --openssldir=/usr/local/openssl shared zlib
make
make install
echo "pathmunge /usr/local/openssl/bin" > /etc/profile.d/openssl.sh
echo "/usr/local/openssl/lib" > /etc/ld.so.conf.d/openssl-1.0.2t.conf
ldconfig -v

echo "exited $0"