#!/bin/bash

# A buzzer script for alarm.sh that plays an iTunes playlist, which has been
# exported to this directory in XML format. Right click a playlist in iTunes
# and "Export...", choose XML as the filetype.

# set playlist XML file here
playlist=Wakeup.xml

# change delimiter so for-loop can seperate paths
IFS=$'\n'

# parse XML playlist into file paths
paths=`cat $playlist | grep Location | \
       sed -e 's/	//g' \
           -e 's#<key>Location</key><string>file://localhost##g' \
           -e 's#</string>##g' \
           -e 's/%20/ /g'`

# play playlist on loop
while :
do
  for path in $paths
  do
    afplay "$path"
  done
done
