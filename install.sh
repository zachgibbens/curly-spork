#!/bin/bash
date -u >> /root/test.txt
<<<<<<< HEAD
<<<<<<< HEAD
apt install -y curl sudo
useradd -m -p changeme user
adduser user sudo
sudo cp /etc/apt/sources.list /etc/apt/sources.list.orig
echo "deb https://deb.debian.org/debian/ experimental main contrib non-free
deb-src https://deb.debian.org/debian/ experimental main contrib non-free
deb https://deb.debian.org/debian/ sid main contrib non-free
deb-src https://deb.debian.org/debian/ sid main contrib non-free" | sudo tee /etc/apt/sources.list
sudo apt update
mkdir /home/user/.ssh/
curl https://github.com/zachgibbens.keys >> /home/user/.ssh/authorized_keys
chown user:user /home/user/.ssh
chown user:user /home/user/.ssh/authorized_keys
chmod 600 /home/user/.ssh/authorized_keys
chmod 700 /home/user/.ssh
sudo apt install -y mosh screen ssh
=======
>>>>>>> 8e8df36 (	new file:   install.sh)
=======
>>>>>>> 8e8df36 (	new file:   install.sh)
