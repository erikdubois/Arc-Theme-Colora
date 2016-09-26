# Arc-Colara Theme

Changing the colours of Arc-Theme of https://github.com/horst3180/arc-theme.

###Arc-Sun has been renamed to Arc-Colora! 

Sardi icons uses also the term COLORA to indicate that the icons can be ANY colour. Hope this will be more transparent to the end-user.

#Arc COLORA is also capable to have ANY colour YOU like.

Create your own theme with these scripts. Choose the colour accent and run!


Arc-Colora is a flat theme with transparent elements for GTK 3, GTK 2 and Gnome-Shell which supports GTK 3 and GTK 2 based desktop environments like Gnome, Unity, Budgie, Pantheon, XFCE, Mate, etc.


It is forked from https://github.com/horst3180/arc-theme.

Each time is run these scripts, I renamed the result from 

Sun is just the name of the colour.

Arc to Arc-Sun 
Arc-Dark to Arc-Dark-Sun
Arc-Darker to Arc-Darker-Sun

Other names and themes that I created are in the themes folder. They are always 'old'.

If you run the scripts on the latest version of the github of horst then you will have the most recent version with the latest bug fixes.


# Just want to download the themes not build them (approx. 20 minutes)

Check the folder <b>themes</b> : three sun variants can be copy/pasted.

In the mean time we ran our script a few times. I will add the results of these runs also to the folder.



#Some examples of themes created with the script


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



# Building the theme yourself - youtube tutorial

[![Change the colour of the Arc Theme](http://i.imgur.com/WnT6XAH.png)](https://youtu.be/N_3tCp-47YY "Changing the colour of the Arc Theme")


##A screenshot of the Arc-Dark-Tomato theme

![Screenshots](http://i.imgur.com/jhuHWu8.png)


# Building the theme yourself - youtube tutorial

[![Change the colour of the Arc Theme](http://i.imgur.com/WnT6XAH.png)](https://youtu.be/N_3tCp-47YY "Changing the colour of the Arc Theme")





# Building the theme yourself

You can change the colour in the process. 

Arc-Sun uses #C77320 but you can choose ANY hexadecimal colouring you want.

http://www.color-hex.com/color/c77320

### Requirements

* Gnome/GTK 3.14, 3.16, 3.18 or 3.20
* The `gnome-themes-standard` package
* The murrine engine. This has different names depending on your distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Main distributions that meet these requirements are

* Arch Linux and Arch Linux based distros
* Ubuntu 15.04, 15.10 and 16.04 (**Ubuntu 14.04 and 14.10 are not supported**)
* elementary OS Freya
* Debian 8, Testing or Unstable
* Gentoo
* Fedora 21 - 24
* openSUSE 13.2, Leap 42.1 and Tumbleweed

Derivatives of these distributions should work, as well.

If your distribution isn't listed, please check the requirements yourself.

### Installation

**Important:** Remove all older versions of the theme from your system before you proceed any further.


    sudo rm -rf /usr/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    sudo rm -rf /usr/local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.local/share/themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}
    rm -rf ~/.themes/{Arc-Sun,Arc-Darker-Sun,Arc-Dark-Sun}



To build the theme you'll need 

* `optipng`
* `inkscape`
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` if you use Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` if you want to clone the source directory

  sudo apt-get install ...

If your distributions doesn't ship separate development packages you just need GTK 3 instead of the `-dev` packages.

Install the theme with the following commands

**1. Get the source**

If you want to install the latest version from git, clone the repository with

    git clone https://github.com/erikdubois/arc-theme-colora --depth 1 && cd arc-theme-colora

**2. Change the colour**

Use the script to change the colour. Find yourself a nice colour on gpick or online.
It should be a hexadecimal notation. Read the script for more info.

	1-change-colors.sh

**3. Delete old assets or png's**

Old png's will have to be deleted. They are still the original blue ones. Read the script for more info.

	2-delete-assets.sh


**4. Make new assets or png's**

This is the most important part. New png's will be created with your colour.

	3-make-assets.sh


**5. Build and install the theme**

    ./autogen.sh --prefix=/usr
    
    sudo make install

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

See that you do not overwrite existing themes.

The initial names will be 

  Arc-Sun
  Arc-Dark-Sun
  Arc-Darker-Sun

You have to change the names manually. Easier than looking in the files where to change what.

I move them manually to ~/.themes were I can make further enhancements and changes.

Rename the folders so that they are unique.

Change the index.theme so that the names of the theme are the same as the folder.



After the installation is complete you can activate the theme with `gnome-tweak-tool` or a similar program by selecting `Arc-Sun`, `Arc-Darker-Sun` or `Arc-Dark-Sun` as Window/GTK+ theme and `Arc-Sun` or `Arc-Dark-Sun` as Gnome-Shell and Xfce-Notify theme.



# Uninstall the theme


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

