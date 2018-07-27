#! /bin/bash

# https://bbs.archlinux.org/viewtopic.php?id=67425

eval "export | egrep 'DBUS_SESSION_BUS_ADDRESS|DISPLAY'"
# DISPLAY=:0

# low battery in %
LOW_BATTERY="25"

# path to battery /sys
BATTERY_PATH="/sys/class/power_supply/BAT0/"

while :
do
  if [ -e "$BATTERY_PATH" ]; then
      BATTERY_ON=$(cat $BATTERY_PATH/status)
      if [ "$BATTERY_ON" == "Discharging" ]; then
          CURRENT_BATTERY=$(cat $BATTERY_PATH/capacity)
          if [ "$CURRENT_BATTERY" -lt "$LOW_BATTERY" ]; then
            DISPLAY=:0 notify-send -u critical -t 666 "Battery % is down to $CURRENT_BATTERY%"
          fi
      fi

      sleep 66
  fi
done
