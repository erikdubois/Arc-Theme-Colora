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
echo "Deleting all old assets i.e. png with blue colour in the arc-theme/common folder"

find arc-theme/common -iname "*.png" -exec rm '{}' \;

echo "All png's have been deleted"
echo "Proceed to making the assets."
echo
echo "Run next script to make the assets i.e. the png's with your colour."
echo "#####################################################################"
