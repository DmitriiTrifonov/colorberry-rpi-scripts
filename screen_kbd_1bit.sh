#!/bin/sh

echo "install kernel headers"
sudo apt install raspberrypi-kernel-headers

echo "install 1bit jdi display driver"
git clone -b jdi-1bit https://github.com/DmitriiTrifonov/jdi-drm.git
cd jdi-drm
make
sudo make install

cd ..

echo "install keyboard driver"
git clone https://github.com/ardangelo/beepberry-keyboard-driver.git
cd beepberry-keyboard-driver
make
sudo make install

echo "done"
