#!/bin/bash

#Refresh Cache
apt-get update -y

#Requiered Installs 

apt-get install debian-archive-keyring
apt-get install curl gnupg apt-transport-https

#PGP adding 
curl -L https://packagecloud.io/ic009/ic-beta/gpgkey | sudo apt-key add -

#Config
tpoch /etc/apt/sources.list.d/ic009_ic-beta.list
echo "deb https://packagecloud.io/ic009/ic-beta/ubuntu/ jammy main" >> /etc/apt/sources.list.d/ic009_ic-beta.list
echo "deb-src https://packagecloud.io/ic009/ic-beta/ubuntu/ jammy main" >> /etc/apt/sources.list.d/ic009_ic-beta.list

#Refresh Cache
apt-get update -y

#DONE
echo Done
