#!/bin/bash
sudo dpkg -i $GITHUB_ACTION_PATH/util/zerotier-one_1.4.6_amd64.deb
sudo /etc/init.d/zerotier-one start
while [ ! -f /var/lib/zerotier-one/identity.secret ]; do
	sleep 1
done