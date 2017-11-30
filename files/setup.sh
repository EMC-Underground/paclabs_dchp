#!/bin/bash

> /etc/machine-id

mkdir -p ~/.ssh
cat /tmp/keys >> ~/.ssh/authorized_keys
yum -y update

sudo yum -y install epel-release
sudo yum -y install openssl-devel log4cplus-devel boost-devel

# Need to compile our own for this version
mv /tmp/kea-1.3.0-centos7.tar.gz /root/
mv /tmp/kea_info.sh /root/
cd /root
tar zxvf kea-1.3.0-centos7.tar.gz
rm -f kea-1.3.0-centos7.tar.gz

cd /root/kea-1.3.0
sudo make install
rm -fr /root/kea-1.3.0

mv -f /tmp/*.conf /usr/local/etc/kea/

# Adds a service to start Kea on reboot
mv /tmp/kea_startup.service /etc/systemd/system
systemctl enable kea_startup

/usr/local/sbin/keactrl
/usr/local/sbin/keactrl start
echo "/usr/local/sbin/keactrl start" >> /usr/local/bin/startup.sh

chmod +x /root/kea_info.sh
/root/kea_info.sh
