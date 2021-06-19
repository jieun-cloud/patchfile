HOME_PATH="/home/jieun"
KERNEL_PATH=${HOME_PATH}/Downloads
KERNEL_FILE=$(ls ${HOME_PATH}/Downloads|grep linux)
#echo ${KERNEL_FILE}
cd ${KERNEL_PATH}
#tar -zxvf ${KERNEL_FILE}
LIST=$(sudo find ${KERNEL_PATH} -type f -name *.tar.gz|grep 3.10.61)
NAME=$(basename ${LIST})
KERNEL_FILE_NAME="${NAME%.tar.gz}"
#echo ${KERNEL_FILE_NAME}
mv ${KERNEL_FILE_NAME} ${HOME_PATH}
cd ${HOME_PATH}/${KERNEL_FILE_NAME}/


#mv /home/jieun/Downloads/linux-3.10.61
#cd /home/jieun/barrieriostack
#git checkout mq_barrier
#cp /home/jieun/patchfile/patch_nvme_barrier /home/jieun/barrieriostack
#patch -p0 < patch_nvme_barrier
#cd ./kernel/x86_64
cp /boot/config-4.2.0-27-generic ./.config
sudo make menuconfig
sudo make -j50
sudo make modules
sudo make modules_install
sudo make install

