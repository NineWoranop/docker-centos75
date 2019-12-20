#### Install Apache Httpd 2.4.41
yum install epel-release -y
yum install autoconf expat-devel libtool libnghttp2-devel pcre-devel -y
cd /usr/local/src
curl -O -L https://github.com/apache/httpd/archive/2.4.41.tar.gz
curl -O -L https://github.com/apache/apr/archive/1.6.5.tar.gz
curl -O -L https://github.com/apache/apr-util/archive/1.6.1.tar.gz
tar -zxvf 2.4.41.tar.gz
tar -zxvf 1.6.5.tar.gz
tar -zxvf 1.6.1.tar.gz
cp -r apr-1.6.5 httpd-2.4.41/srclib/apr
cp -r apr-util-1.6.1 httpd-2.4.41/srclib/apr-util
cd httpd-2.4.41
./buildconf
./configure                           \
        --enable-proxy                \
        --enable-proxy-connect        \
        --enable-proxy-http           \
        --enable-proxy-ajp            \
        --enable-rewrite              \
        --enable-ssl                  \
        --enable-so                   \
        --enable-http2                \
        --enable-mpms-shared=all      \
        --with-included-apr           \
        --with-ssl=/usr/local/openssl \
        --prefix=/etc/httpd
make
make install

echo "exited install-httpd $0"