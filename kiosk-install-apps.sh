#!/bin/bash
 
# install softwares
# -----------------
sudo apt-get update

# install tools for desktop config
# -----------------
sudo apt-get install dconf-tools --yes

# install essentials
# -----------------
sudo apt-get install vim --yes
sudo apt-get install git
sudo apt-get install build-essential --yes
sudo apt-get install -y curl
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update -y
sudo apt-get install -y sublime-text-installer
cd $HOME/.config/sublime-text-3/Installed\ Packages
wget https://sublime.wbond.net/Package%20Control.sublime-package
cd

# install c++ stuff
# -----------------
sudo apt-get install autoconf --yes
sudo apt-get install libtool --yes
sudo apt-get install g++ make --yes
# install python stuff
# -----------------
sudo apt-get install python-software-properties python python-pip --yes
#sudo apt-get install python3 --yes

# install devilspie stuff
# -----------------
# Devil's Pie provides precise control over windows position
sudo apt-get install devilspie --yes
sudo apt-get install gdevilspie --yes

# install lamp stuff
# -----------------
sudo apt-get install apache2   --yes
sudo apt-get install -y mysql-server mysql-client 
sudo apt-get install -y php5 libapache2-mod-php5 
sudo /etc/init.d/apache2 restart
sudo apt-get search php5
sudo apt-get install -y php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-json 
/etc/init.d/apache2 restart
sudo apt-get install -y phpmyadmin 
 
# install nodejs stuff
# -----------------
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y
sudo apt-get install -y nodejs npm
sudo apt-get install -y nodejs-legacy


# install teamviewer
# -----------------
# TODO: check still working on ubuntu gnome
sudo wget http://download.teamviewer.com/download/version_8x/teamviewer_linux_x64.deb
sudo dpkg -i teamviewer_linux_x64.deb
sudo apt-get install -f -yes


# install dropbox 
# -----------------
sudo add-apt-repository ppa:hertzog/nautilus-dropbox
sudo apt-get update
sudo apt-get install nautilus-dropbox --yes
