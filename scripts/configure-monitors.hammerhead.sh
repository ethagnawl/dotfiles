#!/usr/bin/env bash

set -euo pipefail

# # --output HDMI-3 \
# xrandr \
#   --output VGA-1 \
#   --auto \
#   --left-of LVDS-1 \
#   --output HDMI-2 \
#   --auto \
#   --right-of LVDS-1

monitor_count=$(xrandr --query | grep " connected" | wc -l)

if [ "$monitor_count" == "3" ]; then
  echo "Configuring multi-monitor setup ..."
  xrandr \
    --output HDMI-3 --mode 1920x1080 --pos 0x0 --rotate normal \
    --output LVDS-1 --primary --mode 1600x900 --pos 1920x0 --rotate normal \
    --output VGA-1 --mode 1920x1080 --pos 3520x0 --rotate left
else
  echo "Configuring single monitor setup ..."
  xrandr --auto
fi


# exec feh --bg-fill ~/Downloads/waneela-wallpapers/waneela-11-13-2020/This_One_Still_Works_5400x2700.png
# exec feh --bg-fill ~/Downloads/i-want-to-believe.png
#exec feh --bg-fill ~/Downloads/waneela-10-1-22/On-The-Hill_5760x2880_waneella.png
