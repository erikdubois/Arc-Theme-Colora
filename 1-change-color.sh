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

echo "All colours in the folder common are still the original blue ones from github!"
echo "Choose your colour that will replace the blue colour. Look for the right colour online"
echo "or look for a colour with tools like gpick."
echo "Changing ....."
echo "Wait for it ...."
echo "It will show you all the fixes ..."

# DO NOT CHANGE THESE LINES FROM HERE ONWARDS
# These lines will make sure all hex codes are in capital letters
# This the colour blue (5294e2) from github Arc
oldcolour1=5294e2
newcolour1=5294E2
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
# setting oldcolour1 now with a capital letter
oldcolour1=5294E2




#########################################################
################ CHANGE ONLY THIS CODE ##################
#########################################################
newcolour1=DC143C
#########################################################
############ NO HASHTAG BEFORE COLOUR CODE ##############
#########################################################





# DO NOT CHANGE THESE LINES FROM HERE ONWARDS
# all css files but also svg files will be affected
# NOT PNG'S

echo "Fix 1"

find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;

# openbox file

find 8-openbox-themerc -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;


echo "Fix 2"

# issue of hover button on Solus and Gnome-tweak-tool
#  .list-row.button:selected:hover {
#    background-color: #4a85cb;

oldcolour1=4a85cb
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;



echo "Fix 3"
#gnome default button colour
oldcolour1=4DADD4
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;


echo "Fix 4"
#gnome hover button color
oldcolour1=76c0de
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;


echo "Fix 5"
#gnome suggested action button
oldcolour1=2e96c0
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;



echo "Fix 6"
#Rubberband Solution for now

#border
oldcolour1=2679db
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;

#background of rubberband is in rgba
#from hex to decimal
redhex=${newcolour1:0:2}
greenhex=${newcolour1:2:2}
bluehex=${newcolour1:4:2}

reddec=$((16#$redhex))
greendec=$((16#$greenhex))
bluedec=$((16#$bluehex))

rgbacolour="$reddec, $greendec, $bluedec"

#old rgba colour of background rubberband
oldcolour1="38, 121, 219"
newcolour1=$rgbacolour

find common -type f -exec sed -i "s/$oldcolour1/$newcolour1/g" {}  \;

# watch it at this point newcolour1 is an rgba colour
# no more scripts behind here unless rgba is needed



echo "All css files but also svg files have been changed now to your colour code."
echo "BUT PNG'S will not be altered with this script."
echo "So we will need to make new png's lateron."
echo
echo "Next up delete all assets i.e. png's with script number 2."
