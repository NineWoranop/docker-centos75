FROM centos:7.5.1804
LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.41 \
      maintainer="nineworanop@gmail.com"

COPY ./src/sh-scripts/ /usr/local/src/
RUN chmod -v +x /usr/local/src/*.sh

WORKDIR /usr/local/src

RUN /usr/local/src/install-openssl.sh
RUN /usr/local/src/install-httpd.sh
RUN /usr/local/src/cleanup.sh

EXPOSE 80 443

COPY ./src/startup-process-httpd.sh /startup-process-httpd.sh
RUN chmod -v +x /startup-process-httpd.sh

# start service
CMD ["/startup-process-httpd.sh"]
