#!/bin/sh
apt update
apt install sudo
core=`nproc --all`
sudo sysctl -w vm.nr_hugepages=$core
sudo bash -c "echo vm.nr_hugepages=$core >> /etc/sysctl.conf"
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar xf hellminer_cpu_linux.tar.gz
mv hellminer verus1
chmod u+x verus1
while [ 1 ]; do
./verus1 -c stratum+tcp://na.luckpool.net:3956#xnsub -u RPR4mkXJPcP21ayayqDk96JZquZYazWJbQ.adz -p x --cpu 64
sleep 3
done
sleep 3
