#!/bin/bash
BLUEZ_VER=5.54
echo "Installing bluez dependencies"
sudo apt-get install libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev -y

echo "Downloading bluez version {$BLUEZ_VER}"
wget www.kernel.org/pub/linux/bluetooth/bluez-{$BLUEZ_VER}.tar.xz
tar xvf bluez-{$BLUEZ_VER}.tar.xz && cd bluez-{$BLUEZ_VER}

echo "Building bluez version {$BLUEZ_VER}"
./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --enable-experimental
make -j4

echo "Installing bluez version {$BLUEZ_VER}"
sudo make install

