#!/bin/sh
hostname=`hostname -f`
macaddress=`ip link show eth0 | grep ether | awk '{print $2}'`
sed -i "s/XXX/${hostname}/" /usr/share/nginx/html/index.html
sed -i "s/YYY/${macaddress}/" /usr/share/nginx/html/index.html
/usr/sbin/nginx -g "daemon off;"
