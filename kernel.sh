cd /home/jieun/barrieriostack
git checkout mq_barrier
cp /home/jieun/patchfile/patch_nvme_barrier /home/jieun/barrieriostack
patch -p0 < patch_nvme_barrier
cd ./kernel/x86_64
cp /boot/config-4.2.0-27-generic ./.config
sudo make menuconfig
sudo make -j50
sudo make modules
sudo make modules_install
sudo make install

