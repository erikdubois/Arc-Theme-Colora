# Arc-Colora Theme

The goal is to make scripts that make it easy to change the 'accent' colours of the Arc-Theme.

## Arc COLORA is capable to have ANY colour YOU like.

Many articles and youtube tutorials can be found here :

http://erikdubois.be/category/themes/arc-based-themes/

The arc theme can be found at https://github.com/horst3180/

## Create your own colour accent theme with these scripts.

Arc is a flat theme with transparent elements for GTK 3, GTK 2 and Gnome-Shell which supports GTK 3 and GTK 2 based desktop environments like Gnome, Unity, Budgie, Pantheon, XFCE, Mate, etc.


## These scripts are build to run on any Linux distro.


# Installation

**Important:** The script of Horst3180 is build this way that the output will be to /usr/share/themes and that the directories will be called Arc, Arc-Dark and Arc-Darker. If you have already Arc installed. **It will be overwritten.**

**But we have a script to reinstall the original arc theme at the end.**

Run the scripts from 1 to 8 and follow the instructions.

**1. Install the software you will need**

Install the software for your distro.

    installation1.sh


**2. Change the colour**

Use the script to change the colour. Find yourself a nice colour with gpick or online.
It should be a hexadecimal notation WITHOUT the #. Read the script for more info.

    installation2.sh

**3. Delete old assets or png's**

Old png's will have to be deleted. They are still the original blue ones. Read the script for more info.

	installation3.sh


**4. Make new assets or png's**

This is the most important part. New png's will be created with your colour. This takes time.

	installation4.sh


**5. Build and install the theme**

    installation5.sh

**6. Copy and rename the theme**

If all went well you will find the result in this directory

    /usr/share/themes !!

It has now the standard name Arc, Arc-Dark and Arc-Darker.


We will run

    installation6.sh

in order

	- to rename the folders
	- to move the folders to ~/.themes
	- to change the content of the three index.themes

Follow the instructions in the script. It will ask for the name to add behind these standard names.

	Arc-Sun for example


After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Arc-Sun`, `Arc-Sun-Dark` or `Arc-Sun-Darker` as Window/GTK+ theme. If you named the theme "Sun". That is just an example.

**7. Erase the theme in /usr/share/themes**

<b>Your personal theme is in ~/.themes with the changed name and changed index.themes IF you ran previous script.</b>

You can erase the ones in /usr/share/themes.

Run this script

	installation7.sh



**8. If you want to reinstall the latest version of the original Arc theme**

The script of horst3180  will make (and overwrite) folders Arc, Arc-Dark and Arc-Darker in the /usr/share/themes. So when we ran our script to change the colours, the output of this personal creation will be in /usr/share/themes.

If you want the original Arc theme back. Just run this script

    installation8.sh


# Script can run on a variety of distro's.

## ArchMergeD Mate

![Screenshots](https://i.imgur.com/QCqypzj.jpg)


## Archlinux Budgie


![Screenshots](http://i.imgur.com/eglrK8U.jpg)


## Solus Budgie

![Screenshots](http://i.imgur.com/grzCgQ1.jpg)


## Ubuntu 16.04

On top of the yellow arc theme I made a new icon theme from sardi mono numix colora where the body is the same colour as the yellow from the theme.

![Screenshots](http://i.imgur.com/tzcv0r6.png)


## Linux Mint


##Arc-Sun

A screenshot of the Arc-Sun theme

![Screenshots](http://i.imgur.com/ck1grBn.jpg)

##Arc-Dark-Sun

A screenshot of the Arc-Darker-Sun theme]

![Screenshots](http://i.imgur.com/QnFBXN7.jpg)

###Arc-Darker-Sun

A screenshot of the Arc-Dark-Sun theme

![Screenshots](http://i.imgur.com/lVF7Wj0.jpg)

##A screenshot of the Arc-Dark-Fab theme

![Screenshots](http://i.imgur.com/PbRDWxU.jpg)

##A screenshot of the Arc-Dark-Luv theme

![Screenshots](http://i.imgur.com/c3OTQLZ.jpg)

##A screenshot of the Arc-Dark-Tomato theme

![Screenshots](http://i.imgur.com/jhuHWu8.png)

##A screenshot of the Arc-Dark-Froly theme

![Screenshots](http://i.imgur.com/6FcWAzP.jpg)

##A screenshot of the Arc-Dark-Moon theme

![Screenshots](http://i.imgur.com/tzdUuax.jpg)

##A screenshot of the Arc-Dark-Polo theme

![Screenshots](http://i.imgur.com/PBHyYrC.jpg)

##A screenshot of the Arc-Dark-Numix theme

![Screenshots](http://i.imgur.com/vuZ9N2j.jpg)

##A screenshot of the Arc-Dark-Evopop theme

![Screenshots](http://i.imgur.com/0t8HtAP.jpg)

##A screenshot of the Arc-Dark-Paper theme

![Screenshots](http://i.imgur.com/uB4WWNW.jpg)

##A screenshot of the Arc-Dark-Breeze theme

![Screenshots](http://i.imgur.com/M90Lv19.jpg)

##A screenshot of the Arc-Dark-Crimson theme

![Screenshots](http://i.imgur.com/b11ABjo.jpg)

##A screenshot of the Arc-Dark-Tron theme

![Screenshots](http://i.imgur.com/BtrFo6W.jpg)

##A screenshot of the Arc-Dark-Orchid theme

![Screenshots](http://i.imgur.com/qCTWLZy.jpg)

##A screenshot of the Arc-Dark-Watusi theme

![Screenshots](http://i.imgur.com/9RMtJxo.jpg)

##A screenshot of the Arc-Dark-Grenadine theme

![Screenshots](http://i.imgur.com/j2nABVI.jpg)

##A screenshot of the Arc-Dark-Violet theme

![Screenshots](http://i.imgur.com/X10vCOE.jpg)



# Just want to download the themes not build them.

Linux Mint users download here : https://github.com/erikdubois/Arc-Theme-Colora-Collection

On other githubs I do have some specific Arc Colora themes for that distro when I test the script.

Again just run the scripts on your distro. Depending on cpu power etc it will take about 10-15 minutes.


# Uninstall the theme manually

If you renamed the theme to Arc-Sun for example

    sudo rm -rf /usr/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    sudo rm -rf /usr/local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}


Report any issues on google+ or on this github.


Enjoy.

# F  A  Q
--------------------

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

	ls -al

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

	chmod +x typeyourfilename

Then you can execute it by typing

	./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)


-------------------------------------------------
#But that is the fun in Linux.

You can do whatever <b>Y O U</b> want.

Share the knowledge.

I share my knowledge at http://erikdubois.be
------------------------------------------------
