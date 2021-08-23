sudo apt-get install -y vim git ctags cscope libaio-dev libncurses5-dev libncursesw5-dev

#Format and mount nvme device
sudo mkfs -t ext4 /dev/nvme0n1 
sudo mount -t ext4 /dev/nvme0n1 /mnt
 
git clone https://github.com/ESOS-Lab/barrieriostack.git
git clone https://github.com/ESOS-Lab/Mobibench.git
#mv ./barrieriostack /home/jieun

#Mobibench
#mv ./Mobibench /home/jieun
#cd /home/jieun/Mobibench/shell
sudo make -j50
sudo make install

#Filebench
#cd /home/jieun
sudo apt-get update
sudo apt-get install -y build-essential
git clone https://github.com/filebench/filebench.git
sudo apt-get install -y automake
sudo apt-get install -y libtool
sudo apt-get install -y bison flex
sudo apt-get install -y make


cd ./filebench
libtoolize
aclocal
autoheader
automake --add-missing
autoconf
./configure
sudo make -j50
sudo make install -j50
