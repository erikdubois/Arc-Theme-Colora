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

echo "All colours in the folder common are still the original blue ones from github!!!"
echo "Choose your colour that will replace the blue online or with tools like gpick."
echo "e.g. sudo apt-get install gpick"
echo "Changing ....."
echo "Wait for it ...."

# These lines will make sure all hex codes are in capital letters
# This the colour blue (5294e2) from github Arc
# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES

oldcolour1=5294e2
newcolour1=5294E2
#find common -name "*.*" -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
oldcolour1=5294E2

# Changing the colour blue into ...
# Change the colour of newcolour1 ONLY
# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES


#########################################################
################ CHANGE ONLY THIS CODE ##################
#########################################################
newcolour1=FD424D
#########################################################
############ NO HASHTAG BEFORE COLOUR CODE ##############
#########################################################




# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES
# all css files but also svg files will be affected
# NOT PNG'S

find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;

#Rubberband issue

#oldcolour1=2679db
#not solved yet
#find common -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;


# DO NOT CHANGE THESE LINES
# DO NOT CHANGE THESE LINES

echo "All css files but also svg files will be affected"
echo "PNG'S will not be altered with this script"
echo
echo "Next up delete all assets i.e. png's with script number 2"