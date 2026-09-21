##!/usr/bin/env bash

set -euo pipefail

snap list --all | awk '/disabled/{print $1, $3}' | \
  while read name rev; do sudo snap remove "$name" --revision="$rev"; done
sudo snap set system refresh.retain=2
