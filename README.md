# MakeCode Documentation

### This repo is just documentation for an arcade machine that I helped make in highschool

MakeCode Site: <https://arcade.makecode.com>

MakeCode Kiosk Site: <https://arcade.makecode.com/kiosk>

General setup link: <https://arcade.makecode.com/hardware/kiosk>

MakeCode's Kiosk version has a few options. These options are added at the end of the URL. 
These options are: <br>/kiosk?clean=1 and /kiosk?lock=1. 
The first option will get rid of the default games microsoft puts in the kiosk by default. 
The second option will not let people add or delete games to the kiosk. 
You can combine them if you want with /kiosk?lock=1&clean=1. 
Kids can make their own games on MakeCodes main website to then upload to the kiosk. 
To upload games to the machine, follow the setup page linked above. 
That concludes general setup with an already setup machine and games. 



# How to setup the machine from scratch

### Raspberry pi setup

Assuming it's still using a raspberry pi 4, this should all apply.

Download an image of the raspberry pi operating system <https://www.raspberrypi.com/software/>.

Take that raspberry pi image and flash the micro sd with something like [BalenaEtcher](https://etcher.balena.io/) or [Raspberry pi imager](https://www.raspberrypi.com/software/).

Once you have the image installed on the micro sd card and boot up the raspberry pi, you'll need a keyboard and preferrably a mouse for setup.

Preferrably, use a more optimized browser like [mercury](https://github.com/Alex313031/Mercury/releases) to launch these webpages (make sure to download the ARM64.deb version since raspberry pi 4 uses an ARM cpu).

###### Short note: To install mercury, go to the downloads folder in a terminal after downloading the latest ARM64 release and run the following command: 

<code>sudo dpkg -i ./full-file-name.deb</code>

You can go to whatever browser you want, but make sure to go into the settings of that browser and see that tabs or windows on sign out or on close get closed.

We are going to use a script to launch whatever browser you choose to use. This example script will be for mercury.

Go to the desktop and right click the background and create a new file ending in .sh. Open this file in any text editor and input the following example or your own script: 

<code>/lib/mercury/mercury -kiosk https://arcade.makecode.com/kiosk </code>

The general format of this script is to just launch the web browser of choice, open it in it's own kiosk mode (if available) and then go to a specified link.