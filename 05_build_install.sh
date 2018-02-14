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

echo "#####################################################################"
echo "This is the actual creation of your theme."
echo "Installing your personal theme in /usr/share/themes"
echo "If there is already an Arc theme installed, it will be overwritten."
echo "We can reinstall the original arc theme again."
echo "#####################################################################"

arc-theme/autogen.sh --prefix=/usr
sudo make install

echo
echo "Solution to fix this issue only for gtk2 applications like sublime text"
echo
sudo cp -rf /usr/share/themes/Arc-Dark/gtk-2.0/assets/assets-dark/* /usr/share/themes/Arc-Dark/gtk-2.0/assets/
sudo rm -rf /usr/share/themes/Arc-Dark/gtk-2.0/assets/assets-dark

echo "Configuring openbox files"
echo
sudo cp -rf arc-theme/common/openbox-3/ /usr/share/themes/Arc/
sudo cp -rf arc-theme/common/openbox-3/ /usr/share/themes/Arc-Dark/
sudo cp -rf arc-theme/common/openbox-3/ /usr/share/themes/Arc-Darker/

#remove unused themes and rename the used one
#arc theme
sudo rm /usr/share/themes/Arc/openbox-3/themerc-arc-dark
sudo rm /usr/share/themes/Arc/openbox-3/themerc-arc-darker
sudo mv /usr/share/themes/Arc/openbox-3/themerc-arc /usr/share/themes/Arc/openbox-3/themerc
#arc-dark theme
sudo rm /usr/share/themes/Arc-Dark/openbox-3/themerc-arc
sudo rm /usr/share/themes/Arc-Dark/openbox-3/themerc-arc-darker
sudo mv /usr/share/themes/Arc-Dark/openbox-3/themerc-arc-dark /usr/share/themes/Arc-Dark/openbox-3/themerc
#arc darker theme
sudo rm /usr/share/themes/Arc-Darker/openbox-3/themerc-arc
sudo rm /usr/share/themes/Arc-Darker/openbox-3/themerc-arc-dark
sudo mv /usr/share/themes/Arc-Darker/openbox-3/themerc-arc-darker /usr/share/themes/Arc-Darker/openbox-3/themerc
echo "#####################################################################"
echo "The script from Horst3180 will add the folders Arc, Arc-Dark and Arc-Darker to /usr/share/themes."
echo "In effect it will overwrite the original Arc theme if you had it installed."
echo "#####################################################################"
echo "Run next script to copy and rename the themes."
echo "#####################################################################"
