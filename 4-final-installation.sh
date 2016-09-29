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
