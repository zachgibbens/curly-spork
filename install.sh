#!/bin/bash
date -u >> /root/test.txt
sudo DEBIAN_FRONTEND=noninteractive apt install -y curl sudo
useradd -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'changeme') user
adduser user sudo
sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
echo "deb https://deb.debian.org/debian/ experimental main contrib non-free
deb-src https://deb.debian.org/debian/ experimental main contrib non-free
deb https://deb.debian.org/debian/ sid main contrib non-free
deb-src https://deb.debian.org/debian/ sid main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt update
mkdir /home/user/.ssh/
mkdir /root/.ssh/
curl https://github.com/zachgibbens.keys | sudo tee -a /root/.ssh/authorized_keys >> /home/user/.ssh/authorized_keys
chown user:user /home/user/.ssh
chown user:user /home/user/.ssh/authorized_keys
chmod 600 /home/user/.ssh/authorized_keys
chmod 700 /home/user/.ssh
sed -i s/\#PasswordAuthentication\ yes/PasswordAuthentication\ no/g /etc/ssh/sshd_config
sed -i s/\#PermitEmptyPasswords\ no/PermitEmptyPasswords\ no/g /etc/ssh/sshd_config
sudo systemctl restart ssh.service
sudo DEBIAN_FRONTEND=noninteractive apt install -y mosh screen ssh
sudo DEBIAN_FRONTEND=noninteractive apt install -y openbox slim xorg firefox terminator xinit xcompmgr nitrogen tint2 conky-all iptables tigervnc-standalone-server novnc
#sudo DEBIAN_FRONTEND=noninteractive apt ./icaclient.deb
