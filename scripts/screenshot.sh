#!/bin/bash

DATE=`date +%Y-%m-%d\ %H:%M:%S`
DEST="/media/USB1TB/WTF/Dropbox/Photos/screenshot/screenshot-$DATE.png"
import -window root "/media/USB1TB/WTF/Dropbox/Photos/screenshot/screenshot-$DATE.png" # TODO: why can't I use $DEST here?
DISPLAY=:0 notify-send -u low -t 6666 "Screenshot saved to $DEST"
