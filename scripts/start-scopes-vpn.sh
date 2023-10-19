#!/usr/bin/env bash

set -euo pipefail

cd ~/projects/_scopes
sudo openvpn --config ./new-client.ovpn
