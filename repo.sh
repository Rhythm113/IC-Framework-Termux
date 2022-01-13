#Beta Repo of IC-Termux
#Installer Script by @Rhythm113

#!/bin/bash

echo "Updating System MUST.."
#Refresh Cache
apt-get update -y

#Requiered Installs 
echo "Installing Required Tools.."
apt-get install debian-archive-keyring
apt-get install curl gnupg apt-transport-https

#PGP adding 
echo "Downloading PGP & Adding.."
curl -L https://packagecloud.io/ic009/ic-beta/gpgkey | apt-key add -

#Config
touch $PREFIX/etc/apt/sources.list.d/ic009_ic-beta.list
echo "deb https://packagecloud.io/ic009/ic-beta/ubuntu/ jammy main" >>  $PREFIX/etc/apt/sources.list.d/ic009_ic-beta.list
echo "deb-src https://packagecloud.io/ic009/ic-beta/ubuntu/ jammy main" >>  $PREFIX/etc/apt/sources.list.d/ic009_ic-beta.list

#Refresh Cache
apt-get update -y

#DONE
echo "Done by @Rhythm113"
