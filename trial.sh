#!/bin/bash
#usage ss1
#bin variables
$proxy_server
$port
$choice
echo "Enter your proxy server"
read proxy_server

echo "Enter port "
read port
echo "Use Authentication[y/n]"
read choice

proxy_server+=":"
proxy_server=$proxy_server$port

export http_proxy='http://'$proxy_server
export https_proxy='https://'$proxy_server 
export ftp_proxy='ftp://'$proxy_server

dpkg --add-architecture i386



#getting files for ubproxy


if ! curl "http://ubproxy.googlecode.com/files/ubproxy">ubproxy; then
  echo "ERROR: cannot able download ubproxy" >&2
  exit 1
fi
chmod u+x ubproxy
./ubproxy

#adding repositories
#for skype
add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

echo "updating the system and then it will install the package" 
#apt-get -y update



#installing all the software in the system
echo "installing sensors"
apt-get -y install lm-sensors>/dev/null
echo "installing skype"

apt-get -y install skype >/dev/null
echo "installing vlc"
apt-get -y install vlc>/dev/null

echo "installing curl"
apt-get -y install curl>/dev/null

echo "installing git"
apt-get -y install git>/dev/null

echo "installing vim"

apt-get -y install vim>/dev/null



