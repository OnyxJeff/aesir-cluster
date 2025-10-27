#!/bin/bash
# vaultwarden-ct.sh
# Script to deploy Vaultwarden CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Vaultwarden CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/alpine-vaultwarden.sh)"
echo "Vaultwarden CT deployment finished."