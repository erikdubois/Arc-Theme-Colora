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

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
cp -rf /usr/share/themes/Arc $HOME"/.themes"
cp -rf /usr/share/themes/Arc-Dark $HOME"/.themes"
cp -rf /usr/share/themes/Arc-Darker $HOME"/.themes"

echo "Let us rename the folders so they are unique :"
echo "Your name will be added after 'Arc' word"
echo "E.g. Arc-Sun, Arc-Sun-Dark, Arc-Sun-Darker" 

read -p "How should we name this new theme? First letter is a capital letter : " choice

echo "Renaming the folders"

mv $HOME"/.themes/Arc" $HOME"/.themes/Arc-"$choice
mv $HOME"/.themes/Arc-Dark" $HOME"/.themes/Arc-"$choice"-Dark"
mv $HOME"/.themes/Arc-Darker" $HOME"/.themes/Arc"$choice"-Darker"

echo "################################################################" 
echo "Renaming the content of the index.theme"
echo "Arc-$choice-Darker"
find $HOME"/.themes/Arc-"$choice"-Darker" -name "index.theme" -type f -exec sed -i 's/'Name=Arc-Darker'/'Name=Arc-$choice-Darker'/g' {}  \;
find $HOME"/.themes/Arc-"$choice"-Darker" -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Arc-Darker'/'GtkTheme=Arc-$choice-Darker'/g' {}  \;
find $HOME"/.themes/Arc-"$choice"-Darker" -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Arc-Darker'/'MetacityTheme=Arc-$choice-Darker'/g' {}  \;
echo "################################################################" 
echo "Renaming inside the index.theme"
echo "Arc-$choice-Dark"
find $HOME"/.themes/Arc-"$choice"-Dark" -name "index.theme" -type f -exec sed -i 's/'Name=Arc-Dark'/'Name=Arc-$choice-Dark'/g' {}  \;
find $HOME"/.themes/Arc-"$choice"-Dark" -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Arc-Dark'/'GtkTheme=Arc-$choice-Dark'/g' {}  \;
find $HOME"/.themes/Arc-"$choice"-Dark" -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Arc-Dark'/'MetacityTheme=Arc-Dark-$choice'/g' {}  \;
echo "################################################################" 
echo "Renaming inside the index.theme"
echo "Arc-$choice"
find $HOME"/.themes/Arc-"$choice -name "index.theme" -type f -exec sed -i 's/'Name=Arc'/'Name=Arc-$choice'/g' {}  \;
find $HOME"/.themes/Arc-"$choice -name "index.theme" -type f -exec sed -i 's/'GtkTheme=Arc'/'GtkTheme=Arc-$choice'/g' {}  \;
find $HOME"/.themes/Arc-"$choice -name "index.theme" -type f -exec sed -i 's/'MetacityTheme=Arc'/'MetacityTheme=Arc-$choice'/g' {}  \;
echo "################################################################" 
echo "The themes have been renamed and moved to your home folder"
echo "in the hidden folder .themes"
echo "The folder was created if you did not have one."
echo "If you made a mistake, delete the folders in .themes and run the script again."
echo "Select the new theme with your theme manager and enjoy!"
echo "Script 6 will delete the /usr/share/themes you created."
echo "Script 7 will install the original arc theme back."

