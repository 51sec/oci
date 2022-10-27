sudo -i

apt-get update -y && apt-get upgrade -y

apt-get install curl -y && apt-get install wget -y && apt-get install htop -y && apt-get install screen -y
apt-get autoremove -y

systemctl stop rpcbind
systemctl stop rpcbind.socket
systemctl disable rpcbind
systemctl disable rpcbind.socket 

wget https://raw.githubusercontent.com/51sec/swap/main/swap.sh && bash swap.sh
