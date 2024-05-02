# this will go at the end of your .bashrc file, so it is loaded when a new terminal instance is loaded (on logon/startup)

# run the script in a new task with & so it doesn't block terminal use
# NOTE: this only works if you make the script executable with "chmod +x /home/pi/mercury_loader.sh". you may need to use sudo
/home/pi/mercury_loader.sh &
