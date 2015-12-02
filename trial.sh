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



export http_proxy='http://ipg_2011084:931170@192.168.1.107:3128'
export https_proxy='https://ipg_2011084:931170@192.168.1.107:3128'
export ftp_proxy='ftp://ipg_2011084:931170@192.168.1.107:3128'

#getting files for ubproxy



echo "now downloading pycharm"

	if ! wget -O pycharm_professional.tar.gz "http://download.jetbrains.com/python/pycharm-professional-4.5.4.tar.gz" ; then
		echo "Error:Unable to download Pycharm professional version">&2
		exit 1
	fi

	tar -zxvf pycharm_professional.tar.gz

cd pycharm-4.5.4/bin
./pycharm.sh

echo "now installing unrar"
apt-get -y --force yes install unrar

