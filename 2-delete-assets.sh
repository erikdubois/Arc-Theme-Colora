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

echo "Deleting all assets i.e. png in the common folder"

rm -rf common/gtk-2.0/assets/*
rm -rf common/gtk-2.0/assets-dark/*

rm -rf common/gtk-3.0/3.14/assets/*
rm -rf common/gtk-3.0/3.16/assets/*
rm -rf common/gtk-3.0/3.18/assets/*
rm -rf common/gtk-3.0/3.20/assets/*

rm -rf common/xfwm4/assets/*
rm -rf common/xfwm4/assets-dark/*

echo "All png's have been deleted"
echo "Proceed to making the assets."
echo
echo "Run script number 3 to make the assets."