#!/usr/bin/env bash

set -euo pipefail

# TODO: figure out a way to download config or add to dotfiles
OPEN_VPN_CONFIG="$HOME/.config/protonvpn/ch.protonvpn.com.udp.ovpn"

if [ ! -f $OPEN_VPN_CONFIG ]; then
  echo "OPEN_VPN_CONFIG ($OPEN_VPN_CONFIG) not found." >&2
  exit 1
fi

sudo apt install openvpn resolvconf
sudo openvpn $OPEN_VPN_CONFIG
