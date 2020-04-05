sudo apt-get install -y git cmake pkg-config libusb-1.0-0-dev
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
sudo ldconfig
echo "blacklist dvb_usb_rtl28xxu
blacklist rtl2832
blacklist rtl2830" | sudo tee -a /etc/modprobe.d/blacklist-rtl.conf
echo "Reboot to complete the installation."
