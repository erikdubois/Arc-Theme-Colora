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
echo "Removing the personal Arc theme from /usr/share/themes."
sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
echo
echo "Your personal arc themes have been removed from /usr/share/themes."
echo "You can recreate the original blue Arc theme in script 8 if you want."
echo "#####################################################################"
echo "Run next script to have the original Arch theme back (blue accents)."
