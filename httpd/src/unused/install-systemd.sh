## error on systemctl - Failed to get D-Bus connection: Operation not permitted
##ERROR: Service 'httpd' failed to build: The command '/bin/sh -c /usr/local/src/install-systemd.sh' returned a non-zero code: 1

# yum -y install initscripts
# yum -y install systemd
# (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done)
# rm -f /lib/systemd/system/multi-user.target.wants/*
# rm -f /etc/systemd/system/*.wants/*
# rm -f /lib/systemd/system/local-fs.target.wants/*
# rm -f /lib/systemd/system/sockets.target.wants/*udev*
# rm -f /lib/systemd/system/sockets.target.wants/*initctl*
# rm -f /lib/systemd/system/basic.target.wants/*
# rm -f /lib/systemd/system/anaconda.target.wants/*
# echo "systemctl list-unit-files"
# systemctl list-unit-files

echo "exited install-systemd $0"
