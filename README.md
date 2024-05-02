# MakeCode Documentation

### This repo is just documentation for an arcade machine that [Milo](https://github.com/melonkgur), (Justin)[https://github.com/Jbay33], and (I)[https://github.com/mpot05] helped make in highschool

useful links:

* [MakeCode Arcade](https://arcade.makecode.com)

* [MakeCode Arcade Kiosk Page](https://arcade.makecode.com/kiosk)

* [General Kiosk Setup Page](https://arcade.makecode.com/hardware/kiosk)

MakeCode's Kiosk version has a few options. These options are added at the end of the URL. 
These options are: 

* `/kiosk?clean=1`, which will get rid of the default games microsoft puts in the kiosk by default. 
* `/kiosk?lock=1`, which will not let people add or delete games to the kiosk.

*You can also combine them if you want, with `/kiosk?lock=1&clean=1`.*

Kids can make their own games on MakeCode's main website to then upload to the kiosk. 
*To upload games to the machine, follow the setup page linked above.*

That concludes general setup with an already setup machine and games. 

# How to setup the machine from scratch

### Raspberry pi setup

Assuming it's still using a raspberry pi 4, this should all apply.

Download an image of the [raspberry pi operating system](https://www.raspberrypi.com/software/).

Take that raspberry pi image and flash the micro sd with something like [BalenaEtcher](https://etcher.balena.io/) or [Raspberry pi imager](https://www.raspberrypi.com/software/).

Once you have the image installed on the micro sd card and boot up the raspberry pi, you'll need a keyboard and preferrably a mouse for setup.

Preferrably, use a more optimized browser like [mercury](https://github.com/Alex313031/Mercury/releases) to launch these webpages (make sure to download the `ARM64.deb` version since raspberry pi 4 uses an ARM cpu and its os is based on debian).

###### Short note: To install mercury, go to the downloads folder in a terminal after downloading the latest ARM64 release and run the following command: 

`sudo dpkg -i ./full-file-name.deb`

You can go to whatever browser you want, but make sure to go into the settings of that browser and see that tabs or windows on sign out or on close get closed.

We are going to use a script to launch whatever browser you choose to use. This example script will be for mercury.

Go to the desktop and right click the background and create a new file ending in .sh. Open this file in any text editor and input the following example or your own script: 

`/lib/mercury/mercury -kiosk https://arcade.makecode.com/kiosk`

The general format of this script is to just launch the web browser of choice, open it in it's own kiosk mode (if available) and then go to a specified link.

# Things we tried (that didn't work)

## webview browser

Initially, we had assumed that it would be best to run the makecode window in its own custom app/webview. This was to allow for greater control over the app as well as (what we assumed would be) better performance. 

In our first attempt, we used C, [GTK](https://www.gtk.org/), and [WebkitGTK](https://webkitgtk.org/). Unfortunately, we ran into many compiler issues when trying to compile with both GTK and WebkitGTK, not to mention some version mismatch issues. Even after getting through these, we were still relatively sure that we would've had to manually bind joystick inputs to mouse/keyboard ones, so we decided to try something else:

In our second attempt, we used Rust as well as the [Tao](https://github.com/tauri-apps/tao) and [Wry](https://github.com/tauri-apps/wry), both from the [Tauri](https://github.com/tauri-apps/tauri) package. We hardly had to change the default example code to get it to run, however, we quickly ran into issues with both compilation and runtime performance. Throughout the process of compilation, you could expect the compiler (or pi) to crash anywhere from 1 to 5 times. Once it was done, the generated binary was so inneficient (even with "build" settings and the maximum amount of optimization that i could set it to) that it couldn't render a page (unless you opened the binary file without using `cargo run`, in which case it would just be abysmally slow and laggy). 

Ultimately, we gave up on the custom browser and decided that it would be best to just use firefox, and later mercury (since its just heavily optimized firefox). 
