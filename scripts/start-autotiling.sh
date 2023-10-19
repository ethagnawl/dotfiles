#!/usr/bin/env bash

set -euo pipefail

source ~/.venv/bin/activate

notify-send -t 666 "Starting i3 autotiling ..."
python3 ~/dotfiles/scripts/autotiling.py
