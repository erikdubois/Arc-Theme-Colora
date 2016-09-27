# Arc-Colora Theme

##The goal is to make scripts that make it easy to change the colours of the Arc-Theme
Source can be found at https://github.com/horst3180/

###A youtube tutorial can be found here :

###http://erikdubois.be/change-colour-arc-theme-horst3180/


[Sardi icons](https://sourceforge.net/projects/sardi/files/) uses also the term COLORA to indicate that the icons can be ANY colour. Hope this will be more transparent to the end-user.

##Arc COLORA is capable to have ANY colour YOU like.

###Create your own colour accent theme with these scripts.

Arc is a flat theme with transparent elements for GTK 3, GTK 2 and Gnome-Shell which supports GTK 3 and GTK 2 based desktop environments like Gnome, Unity, Budgie, Pantheon, XFCE, Mate, etc.


Each time I run these scripts, I renamed the result from 

    Arc to Arc-Sun
    Arc-Dark to Arc-Dark-Sun
    Arc-Darker to Arc-Darker-Sun

Sun is just the name of the colour. You can choose any name.

Other names and themes that I created are in the themes <b>folder</b>. They are always 'old'.

If you run the scripts on the latest version of the github of Horst <b>then</b> you will have the most recent version with the latest bug fixes.


# Just want to download the themes not build them.

Building takes approx. 20 minutes.

Check the folder <b>themes</b> : 

Here is what you can download: 

All of them have three variants. Not only the Dark version.

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

##A screenshot of the Arc-Dark-Red theme

![Screenshots](http://i.imgur.com/6FcWAzP.jpg)

##A screenshot of the Arc-Dark-Polo theme

![Screenshots](http://i.imgur.com/PBHyYrC.jpg)

##A screenshot of the Arc-Dark-Numix theme

![Screenshots](http://i.imgur.com/vuZ9N2j.jpg)

##A screenshot of the Arc-Dark-Evopop theme

![Screenshots](http://i.imgur.com/0t8HtAP.jpg)

### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further.

The result of the scripts of Horst will be called Arc, Arc-Darker, Arc-Dark no matter what colour you choose.
Rename the folders to a new colouring name.

    sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}
    rm -rf ~/.local/share/themes/{Arc,Arc-Darker,Arc-Dark}
    rm -rf ~/.themes/{Arc,Arc-Darker,Arc-Dark}

If you do not, remove them, my guess is that they will be overwritten. And I guess it will leave some residual code from the old version.

To build the theme you'll need following applications. <b>We will install them via script 3.</b>

    * `optipng`
    * `inkscape`
    * `autoconf`
    * `automake`
    * `pkg-config` or `pkgconfig` if you use Fedora
    * `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
    * `git` if you want to clone the source directory

      or sudo apt-get install ...


#Install the theme with the following scripts

**0. Get the source**

First install git 

	sudo apt-get install git

Get the latest version from Horst - Arc Theme, clone the repository with

    git clone https://github.com/horst3180/arc-theme

Get the latest version from Arc Colora, clone the repository with

    git clone https://github.com/erikdubois/arc-theme-colora

Copy/paste the four scripts inside the directory 

    arc-theme

Let us run the scripts.

**1. Change the colour**

Use the script to change the colour. Find yourself a nice colour on gpick or online.
It should be a hexadecimal notation. Read the script for more info.

	1-change-colors.sh

**2. Delete old assets or png's**

Old png's will have to be deleted. They are still the original blue ones. Read the script for more info.

	2-delete-assets.sh


**3. Make new assets or png's**

This is the most important part. New png's will be created with your colour.

	3-make-assets.sh


**4. Build and install the theme**

    4-final-installation.sh

Other options to pass to autogen.sh are

    --disable-transparency     disable transparency in the GTK3 theme
    --disable-light            disable Arc Light support
    --disable-darker           disable Arc Darker support
    --disable-dark             disable Arc Dark support
    --disable-cinnamon         disable Cinnamon support
    --disable-gnome-shell      disable GNOME Shell support
    --disable-gtk2             disable GTK2 support
    --disable-gtk3             disable GTK3 support
    --disable-metacity         disable Metacity support
    --disable-unity            disable Unity support
    --disable-xfwm             disable XFWM support

    --with-gnome=<version>     build the theme for a specific Gnome version (3.14, 3.16, 3.18, 3.20)
                               Note: Normally the correct version is detected automatically and this
                               option should not be needed.

# Watch out

If you forget to type 

    --prefix=/usr

Then the themes can be found here : 

    /usr/local/share/themes

Otherwise the themes will be installed in 

    /usr/share/themes


#You have to change the names manually.

Easier than looking in the files where to change what.

I move them manually from 

    /usr/share/themes 
    to 
    ~/.themes

were I can make further enhancements and changes.

Rename the <b>folders</b> so that they are unique. E.g. Arc-Sun

Change the <b>index.theme</b> so that the names of the theme are the same as the folder. E.g. Arc-Sun


After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Arc-Sun`, `Arc-Darker-Sun` or `Arc-Dark-Sun` as Window/GTK+ theme and `Arc-Sun` or `Arc-Dark-Sun` as Gnome-Shell and Xfce-Notify theme.



# Uninstall the theme

If you renamed the theme to Arc-Sun for example

    sudo rm -rf /usr/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    sudo rm -rf /usr/local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}


### Extras

This will be the next job on my agenda... Nothing beneath here has changed in reference to the github of horst3180.

#### Arc Firefox theme
A theme for Firefox is available at https://github.com/horst3180/arc-firefox-theme

#### Arc icon theme
The Arc icon theme is available at https://github.com/horst3180/arc-icon-theme

#### Chrome/Chromium theme
To install the Chrome/Chromium theme go to the `extra/Chrome` folder and drag and drop the arc-theme.crx or arc-dark-theme.crx file into the Chrome/Chromium window. The source of the Chrome themes is located in the source "Chrome/arc-theme" folder.

#### Plank theme
To install the Plank theme, copy the `extra/Arc-Plank` folder to `~/.local/share/plank/themes` or to `/usr/share/plank/themes` for system-wide use.
Now open the Plank preferences window by executing `plank --preferences` from a terminal and select `Arc-Plank` as the theme.

#### Arc-Dark for Ubuntu Software Center
The Arc Dark theme for the Ubuntu Software Center by [mervick](https://github.com/mervick) can be installed from [here](https://github.com/mervick/arc-dark-software-center). It solves readability issues with Arc Dark and the Ubuntu Software Center.

### Troubleshooting

If you have Ubuntu with a newer GTK/Gnome version than the one included by default (i.e Ubuntu 14.04 with GTK 3.14 or Ubuntu 15.04 with GTK 3.16, etc.) the prebuilt packages won't work properly and you have to install the theme manually as described above.
This is also true for other distros with a different GTK/Gnome version than the one included by default

--

If you get artifacts like black or invisible backgrounds under Unity, disable overlay scrollbars with

    gsettings set com.canonical.desktop.interface scrollbar-mode normal


### Bug reporting
If you find a bug, please report it at https://github.com/horst3180/arc-theme/issues

### License
Arc is available under the terms the GPL-3.0. See `COPYING` for details.

