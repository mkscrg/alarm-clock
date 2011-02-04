#!/bin/bash

# A buzzer script for alarm.sh that plays an iTunes playlist, which has been
# exported to this directory in XML format.

IFS=$'\n'

paths=`cat Wakeup.xml | grep Location | \
       sed -e 's/	//g' \
           -e 's#<key>Location</key><string>file://localhost##g' \
           -e 's#</string>##g' \
           -e 's/%20/ /g'`

while :
do
  for path in $paths
  do
    afplay "$path"
  done
done
