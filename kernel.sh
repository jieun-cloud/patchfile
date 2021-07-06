cd /home/jieun/sata/barrieriostack/kernel/x86_64/
#git checkout mq_barrier
#cp /home/jieun/patchfile/patch_nvme_barrier /home/jieun/barrieriostack
#patch -p0 < patch_nvme_barrier
#cd ./kernel/x86_64
cp /boot/config-4.4.-27-generic ./.config
sudo make menuconfig
sudo make -j50
sudo make modules
sudo make modules_install
sudo make install

