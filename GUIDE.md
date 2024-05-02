# Guide - how to setup the machine from scratch

### Raspberry pi setup

Assuming it's still using a raspberry pi 4, this should all apply.

Download an image of the [raspberry pi operating system](https://www.raspberrypi.com/software/).

Take that raspberry pi image and flash the micro sd with something like [BalenaEtcher](https://etcher.balena.io/) or [Raspberry pi imager](https://www.raspberrypi.com/software/).

Once you have the image installed on the micro sd card and boot up the raspberry pi, you'll need a keyboard and preferrably a mouse for setup.

Preferrably, use a more optimized browser like [mercury](https://github.com/Alex313031/Mercury/releases) to launch these webpages (make sure to download the `ARM64.deb` version since raspberry pi 4 uses an ARM cpu and its os is based on debian).

###### Short note: To install mercury, go to the downloads folder in a terminal after downloading the latest ARM64 release and run the following command: 

`sudo dpkg -i ./[FILE NAME].deb`

*If you opt to use another browser, please note that you will have to modify the script files in order for it to work properly. In addition, some browsers may not have the same functionality as firefox or mercury.*

With that up and running, you will now have to [setup your browser](/BROWSER.md).
