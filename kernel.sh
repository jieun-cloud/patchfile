KERNEL_CONF=$(uname -r)
cp /boot/config-${KERNEL_CONF} ./.config
sudo make menuconfig
sudo make -j50
sudo make modules -j50
sudo make modules_install -j50
sudo make install -j50

