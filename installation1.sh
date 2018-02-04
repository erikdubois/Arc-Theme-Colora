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



##################################################################################################################
########################                        D I S T R O  C H E C K                  ##########################
##################################################################################################################


echo "################################################################"
echo "Checking presence of lsb-release and install it when missing"

	if ! location="$(type -p "lsb_release")" || [ -z "lsb_release" ]; then

	# check if pacman is installed
		if which pacman > /dev/null; then

			sudo pacman -S --noconfirm lsb-release

		fi


	# check if apt-git is installed
		if which apt-get > /dev/null; then

			sudo apt-get install -y lsb-release

		fi

	# check if eog is installed
		if which eopkg > /dev/null; then

			sudo eopkg install -y lsb-release

		fi

	fi


DISTRO=$(lsb_release -si)

echo "################################################################"
echo "You are working on " $DISTRO
echo "################################################################"


##################################################################################################################
########################                    D E P E N D A N C I E S                     ##########################
##################################################################################################################




case $DISTRO in

	LinuxMint|linuxmint|Ubuntu|ubuntu)

		sudo apt-get install -y git autoconf automake pkg-config libgtk-3-dev inkscape optipng

	;;

	Arch|ArchMerge|ArchMergeD|Antergos)

		sudo pacman -S git gnome-themes-standard gtk-engine-murrine autoconf automake pkg-config inkscape optipng --needed

	;;

	Solus)

		sudo eopkg it -y git inkscape gcolor3 optipng autoconf automake pkg-config libgtk-3-devel m4 make

	;;

	*)
		echo "No dependancies installed."
		echo "No installation lines for your system."
		;;
esac

echo "We install all needed software depending on the distro you are on."
echo
echo "Deleting old files and downloading the latest arc-theme from github"
echo
[ -d arc-theme ] && rm -rf arc-theme

echo "Downloading the latest arc-theme from github"
git clone https://github.com/horst3180/arc-theme.git

#Openbox needs to be themed as well
cp -r openbox-3  arc-theme/common/

echo "################################################################"
echo "Next up figure out the colour accent of your new Arc theme online or with gpick or other software."
echo "Then change the colour for the variable NEWCOLOUR1 in next script, save and run it."
echo "################################################################"
