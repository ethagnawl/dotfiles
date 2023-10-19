#!/bin/bash

echo $(which imagemagick)

DATE=`date +%Y-%m-%d\ %H:%M:%S`
# DEST="/media/USB1TB/WTF/Dropbox/Photos/screenshot/screenshot-$DATE.png"
DEST="$HOME/Dropbox/Screen Captures/screenshot-$DATE.png"
# import -window root "/media/USB1TB/WTF/Dropbox/Photos/screenshot/screenshot-$DATE.png" # TODO: why can't I use $DEST here?
import -window root "$HOME/Dropbox/Screen Captures/screenshot-$DATE.png" # TODO: why can't I use $DEST here?
DISPLAY=:0 notify-send -u low -t 6666 "Screenshot saved to $DEST"
