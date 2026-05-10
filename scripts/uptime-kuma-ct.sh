#!/bin/bash
# uptime-kuma-ct.sh
# Script to deploy Uptime-Kuma CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Uptime-Kuma CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/uptimekuma.sh)"
echo "Uptime-Kuma CT deployment finished."