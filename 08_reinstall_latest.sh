#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#https://github.com/horst3180/arc-theme

echo "#####################################################################"
echo "Installing the origal arc theme from github."
echo "This will always be the best possible up-to-date version you can have!!!"
echo "Straight from github..."
echo "#####################################################################"

git clone https://github.com/horst3180/arc-theme --depth 1 /tmp/arc-theme && cd /tmp/arc-theme
./autogen.sh --prefix=/usr
sudo make install
rm -rf /tmp/arc-theme

# sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
echo "#####################################################################"
echo "The original arc theme is installed. Select Arc, Arc-Dark or Arc-Darker."

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
