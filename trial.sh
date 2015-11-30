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
echo "adding repo of java"
add-apt-repository ppa:webupd8team/java


echo "updating the system and then it will install the package" 
apt-get -y --force-yes update



#installing all the software in the system
echo "installing sensors"
apt-get -y --force-yes install lm-sensors>/dev/null
echo "installing skype"

apt-get -y --force-yes install skype >/dev/null
echo "installing vlc"
apt-get -y --force-yes install vlc>/dev/null

echo "installing curl"
apt-get -y install --force-yes curl>/dev/null

echo "installing git"
apt-get -y install--force-yes  git>/dev/null

echo "installing vim"

apt-get -y --force-yes install vim>/dev/null

echo "installing default jre "
 
apt-get -y --force-yes install default-jre>/dev/null

echo "installing default jdk"
apt-get -y --force-yes install default-jdk>/dev/null

echo "installing open jre"
apt-get -y --force-yes install openjdk-7-jre>/dev/null 

echo "installing open jdk"
apt-get -y --force-yes install openjdk-7-jdk>/dev/null

echo "installing oracle java installer"
apt-get -y --force-yes install python-software-properties>/dev/null

apt-get -y --force-yes install oracle-java7-installer>/dev/null


