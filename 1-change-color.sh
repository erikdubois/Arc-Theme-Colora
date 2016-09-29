#!/bin/bash
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
# 
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
# 
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
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
oldcolour1=5294e2
newcolour1=5294E2
find common -name "*.*" -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
# Changing the colour blue into ...
# Change the colour of newcolour1 ONLY
oldcolour1=5294E2
#colour orange = sun = C77320





#########################################################
################ CHANGE ONLY THIS CODE ##################
#########################################################
newcolour1=C77320
#########################################################
############ NO HASHTAG BEFORE COLOUR CODE ##############
#########################################################





# all css files but also svg files will be affected
# NOT PNG'S

find common -name "*.*" -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;


echo "All css files but also svg files will be affected"
echo "PNG'S will not be altered with this script"
echo
echo "Next up delete all assets i.e. png's with script number 2"