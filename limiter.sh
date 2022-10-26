#!/bin/bash
source .settings
echo "1" > $state_file_location
sleep $time_interval
echo "0" > $state_file_location
