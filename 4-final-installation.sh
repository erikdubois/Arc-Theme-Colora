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


echo "This is it."
echo "Installing your personal theme in /usr/share/themes"
echo "If there is already an Arc theme installed, it will be overwritten."
echo "We can reinstall the original arc theme again."

./autogen.sh --prefix=/usr
sudo make install


#solution to fix this issue only for gtk2 applications like sublime text
sudo cp -rf /usr/share/themes/Arc-Dark/gtk-2.0/assets/assets-dark/* /usr/share/themes/Arc-Dark/gtk-2.0/assets/
sudo rm -rf /usr/share/themes/Arc-Dark/gtk-2.0/assets/assets-dark

#openbox files
sudo cp -rf common/openbox-3/ /usr/share/themes/Arc/
sudo cp -rf common/openbox-3/ /usr/share/themes/Arc-Dark/
sudo cp -rf common/openbox-3/ /usr/share/themes/Arc-Darker/

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

echo "The script from Arc will add the folders Arc, Arc-Dark and Arc-Darker to /usr/share/themes."
echo "In effect it will overwrite the original Arc theme if you had it installed."
echo "If you want the original (blue) Arc theme back again, then we will have to rename our newly created folders"
echo "Arc, Arc-Dark and Arc-Darker to something unique and copy them to our own hidden folder ~/.themes."
echo "Here we will be able to make small changes if need be."
echo "Run script 5 to copy and rename the themes."
echo "Run script 6 to delete the personal creation in /usr/share/themes folders"
echo "Run script 7 to reinstall or install the original arc theme (again) with the blue accents."
