##!/usr/bin/env bash

set -euo pipefail

sudo find /var/log -type f \( -name "*.gz" -o -name "*.[0-9]" \) -delete
