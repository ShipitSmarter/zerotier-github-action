#!/bin/bash

dpkg -i zerotier-one_1.4.6_amd64.deb
/etc/init.d/zerotier-one start
while [ ! -f /var/lib/zerotier-one/identity.secret ]; do
	sleep 1
done