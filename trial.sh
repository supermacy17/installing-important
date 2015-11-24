dpkg --add-architecture i386


#getting files for ubproxy
wget  "www.code.google.com/p/ubproxy/"
#adding repositories
add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"

echo "updating the system and then it will install the package" 
#apt-get update
#installing all the software in the system
echo "installing sensors"
#apt-get install lm-sensors
echo "installing skype"
sleep 1
#apt-get install skype
echo "installing vlc"
#apt-get install vlc

echo "installing curl"
apt-get install curl

echo "installing git"
apt-get install git


