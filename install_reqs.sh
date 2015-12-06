sudo apt-get update;
sudo apt-get install -y g++ git python2.7 make autoconf;
sudo git clone https://github.com/p4lang/behavioral-model.git bmv2;
sudo git clone https://github.com/p4lang/p4c-bm.git p4c-bmv2;
sudo pip install -r ./p4c-bmv2/requirements.txt;
sudo ./bmv2/install_deps.sh;
cd bmv2;
./autogen.sh;
./configure;
make;
sudo apt-get install mininet;
sudo pip install scapy thrift networkx;
cd ..;
sudo ./setup_p4.sh
