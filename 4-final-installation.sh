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
echo "Installing your theme in /usr/share/themes"
echo "If there is already an Arc theme installed, it will be overwritten."
echo "We can reinstall the original arc theme again."

./autogen.sh --prefix=/usr
sudo make install


echo "The script from Arc will add the folders Arc, Arc-Dark and Arc-Darker to /usr/share/themes."
echo "In effect it will overwrite the original Arc theme if you had it installed."
echo "If you want the original (blue) Arc theme back again, then we will have to rename our newly created folders"
echo "Arc, Arc-Dark and Arc-Darker to something unique and copy them to our own hidden folder ~/.themes."
echo "Here we will be able to make small changes if need be."
echo "Run script 5 to copy and rename the themes."
echo "Then you can either delete your personal creation in the /usr/share/themes folders - run script 6"
echo "or reinstall the original arc theme again with the blue accents - run script 7"
echo "Script 7 will overwrite your personal creation with the standard Arc blue colouring."
