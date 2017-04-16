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

echo "Deleting all old assets i.e. png with blue colour in the common folder"

rm -rf common/gtk-2.0/assets/*.png
rm -rf common/gtk-2.0/assets-dark/*.png
rm -rf common/gtk-2.0/menubar-toolbar/*.png
rm -rf common/gtk-3.0/3.14/assets/*.png
rm -rf common/gtk-3.0/3.16/assets/*.png
rm -rf common/gtk-3.0/3.18/assets/*.png
rm -rf common/gtk-3.0/3.20/assets/*.png

rm -rf common/xfwm4/assets/*.png
rm -rf common/xfwm4/assets-dark/*.png

echo "All png's have been deleted"
echo "Proceed to making the assets."
echo
echo "Run script number 3 to make the assets i.e. the png's with your colour."
