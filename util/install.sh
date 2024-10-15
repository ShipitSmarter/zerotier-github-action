#!/bin/bash

ARCH=$(uname -m)

if [[ "$ARCH" == "x86_64" ]]; then
    TARGET="amd64"
elif [[ "$ARCH" == "arm64" ]]; then
    TARGET="arm64"
elif [[ "$ARCH" == "aarch64" ]]; then
    TARGET="arm64"
else
    echo "Unknown architecture: $ARCH"
		exit 1
fi


sudo dpkg -i $GITHUB_ACTION_PATH/util/zerotier-one_1.14.0_${TARGET}.deb
sudo /etc/init.d/zerotier-one start
while [ ! -f /var/lib/zerotier-one/identity.secret ]; do
	sleep 1
done