cd /home/jieun/sata/barrieriostack/kernel/x86_64/
#git checkout mq_barrier
#cp /home/jieun/patchfile/patch_nvme_barrier /home/jieun/barrieriostack
#patch -p0 < patch_nvme_barrier
#cd ./kernel/x86_64
KERNEL_CONF=$(uname -r)
#ls -l /boot/ | grep config-${KERNEL_CONF}
cp /boot/config-${KERNEL_CONF} ./.config
sudo make menuconfig
sudo make -j50
sudo make modules -j50
sudo make modules_install -j50
sudo make install -j50

