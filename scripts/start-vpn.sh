#!/usr/bin/env bash

set -euo pipefail

# TODO: figure out a way to download config or add to dotfiles
OPEN_VPN_CONFIG="$HOME/.config/protonvpn/node-us-69.protonvpn.net.udp.ovpn"

if [ ! -f $OPEN_VPN_CONFIG ]; then
  echo "OPEN_VPN_CONFIG ($OPEN_VPN_CONFIG) not found." >&2
  exit 1
fi

sudo apt install openvpn resolvconf
sudo openvpn --config $OPEN_VPN_CONFIG --writepid /run/openvpn.pid
