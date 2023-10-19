#!/usr/bin/env bash

set -euo pipefail

notify-send -t 6666 "Starting greenclip daemon"

/home/peter/.bin/greenclip daemon
