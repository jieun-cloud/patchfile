sudo apt-get install -y vim git ctags cscope libaio-dev libncurses5-dev libncursesw5-dev
#git clone https://github.com/ESOS-Lab/barrieriostack.git
git clone https://github.com/ESOS-Lab/Mobibench.git
#mv ./barrieriostack /home/jieun
mv ./Mobibench /home/jieun
cd /home/jieun/Mobibench/shell
sudo make -j50
sudo make install
sudo mkfs -t ext4 /dev/nvme0n1 
sudo mount -t ext4 /dev/nvme0n1 /mnt
