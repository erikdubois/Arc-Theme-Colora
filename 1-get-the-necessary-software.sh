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



##################################################################################################################
########################                        D I S T R O  C H E C K                  ##########################
##################################################################################################################

#sudo pacman -S git gnome-themes-standard gtk-engine-murrine autoconf automake pkg-config inkscape optipng gnome-shell sassc meson --needed
sudo apt install inkscape sassc meson gnome-themes-standard gtk2-engines-murrine gnome-shell pkg-config cinnamon libgtk-3-dev optipng

echo "################################################################"
echo "Next up figure out the colour accent of your new Arc theme online or with gpick or other software."
echo "Then change the colour for the variable NEWCOLOUR1 in next script, save and run it."
echo "################################################################"
