#!/bin/bash

# wait 10 seconds to make sure monitor and os is initialized
sleep 10

# get process id(s) of mercury
PID=`pidof mercury`

# path to mercury executable (the executable is called mercury in a folder called mercury)
MERCURY_PATH=/lib/mercury/mercury

# make a string out of the process id(s), a list of numbers, and check if its empty with -z
if [ -z "$PID" ]
then 
  # run mercury with:
  # --display set to id ":0", the main monitor
  # "-kiosk", which opens in true fullscreen
  # the link to go to, with the "clean" argument to remove default games
  $MERCURY_PATH -display=:0 -kiosk "https://arcade.makecode.com/kiosk/?clean=1" > /dev/null 2>&1 
  # send STDOUT to /dev/null with "> /dev/null", effectively hiding all output
  # send STDERR to STDOUT with "2>&1", so even errors are hidden
fi
