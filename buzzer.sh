#!/bin/bash

# Buzzer script for alarm.sh
# The afplay utility is specific to Mac OS X 10.5 and later.

while :
do
  afplay /System/Library/Sounds/Hero.aiff
  sleep 1
done

