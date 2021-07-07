cd /home/jieun/barrieriostack
git checkout mq_barrier
cp /home/jieun/patchfile/barrierpatch* ./
patch -p0 < barrierpatch*
cd ./kernel/x86_64
KERNEL_CONF=$(uname -r)
cp /boot/config-${KERNEL_CONF} ./.config
sudo make menuconfig
sudo make -j50
sudo make modules -j50
sudo make modules_install -j50
sudo make install -j50

