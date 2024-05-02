# Scripts

## PAGES
* [Home](/README.md)
* [Scripts](#)

To get the cabinet to work, two scripts have to be written to:
* `.bashrc`
* `mercury_loader.sh`

For those who don't know, `.bashrc` stores information about the current user's shell, and is run every time that a terminal instance is created. For example, the `$PATH` environment variable is stored in this file. You can read more about them [here](https://www.digitalocean.com/community/tutorials/bashrc-file-in-linux).

`mercury_loader.sh` is a script that will first check if an instance of mercury is currently running, and if it isn't, opens a new one. This is the logic that we want to run on startup, so that the cabinet can automatically open the arcade window without input from a mouse or keyboard. 

## Mercury loader

This script, fully documented, is located in [this repo](mercury_loader.sh). 

While it is not strictly necessary that you understand what it does, I know that someone will, so here are a few resources to help parse this file:
* [Bash cheatsheet](https://devhints.io/bash)
* [Bash conditional expresstions](https://www.gnu.org/software/bash/manual/bash.html#Bash-Conditional-Expressions)
* [/dev/null explanation](https://www.digitalocean.com/community/tutorials/dev-null-in-linux)

The script is designed to work properly, without modification, as long as it is:
* put in the correct location, `/home/pi/` aka `~`
* executable, which can be setup by running `chmod +x mercury_loader.sh` in `~`.

once this is done, we can move on to modifying the `./bashrc` file. 

## Using bash for personal gain

All that needs to be done to get this to work is to add the contents of [this file](bashrc_snippet.sh) to the end of the `.bashrc` file, located again in `~`. 

once that's done, simply restart the pi or make a new terminal tab, wait ~10 seconds, and bask in unrivaled relief that this thing is *finally* done after several months of blood, sweat and tears, but mostly tears.
