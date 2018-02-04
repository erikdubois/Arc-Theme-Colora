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
echo "After running scripts 1 to 3, you will now make new png's."
echo "These png's will have your colouring."
echo
echo "It is time for you to take a coffee."
echo "It will take as long as it takes depending on cpu etc..."
echo "#####################################################################"

echo "making the assets of gtk-2.0"
echo
cd arc-theme/common/gtk-2.0
echo "making the assets of gtk-2.0/render-assets"
echo
sh render-assets.sh
#echo "making the assets of gtk-2.0/render-dark-assets"
#echo
#sh render-dark-assets.sh
echo "making the assets of gtk-3.0"
echo
cd ../gtk-3.0/3.14/
echo "making the assets of gtk-3.0/3.14"
echo
sh render-assets.sh
cd ../3.16/
echo "making the assets of gtk-3.0/3.16"
echo
sh render-assets.sh
cd ../3.18/
echo "making the assets of gtk-3.0/3.18"
echo
sh render-assets.sh
cd ../3.20/
echo "making the assets of gtk-3.0/3.20"
echo
sh render-assets.sh
cd ../../xfwm4
echo "making the assets of xfwm4"
echo
sh render-assets.sh

echo "#####################################################################"
echo "All assets have been made."
echo "Svg's have been exported from the assets svg files"
echo "and converted to png's"
echo
echo "Run next script to install the themes."
echo
echo "Your personal Arc Theme will be installed in /usr/share/themes"
echo "If you have already the Arc theme, it will be overwritten."
echo "Do not worry we can install the original arc theme again."
echo "#####################################################################"
