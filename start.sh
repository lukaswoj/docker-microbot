#!/bin/sh
hostname=`hostname -f`
macaddress=`ip link show eth0 | grep ether | awk '{print $2}'`
sed -i "s/XXX/${hostname}/" /var/www/index.html
sed -i "s/YYY/${macaddress}/" /var/www/index.html
/bin/asmttpd /var/www
