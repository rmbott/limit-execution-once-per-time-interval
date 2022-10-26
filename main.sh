#!/bin/bash
source .settings

##
# Limits execution of code to once every so often. Imagine a cron job that 
# checks a for some threshold condition, say, hardrive capacity of 90%. While 
# your script frees some space you want to prevent other instances spawning 
# while the conditions are still true. 
#
# Set the time interval in .settings
# Set the location of the state file in .settings
#
# -Ryan Bott
##

# Exit if this script has been run within the time interval
if [ -e $state_file_location ]; then
  state=$(cat ${state_file_location})
  if [ $state -eq "1" ]; then
    exit 0
  fi
fi

# We got here first. Prevent other instance of this script from running.
source limiter.sh &

# Code to be executed
echo "$(date +%Y-%m-%d_%T) - Executing code."


