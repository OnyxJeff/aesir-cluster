#!/bin/bash
# PVE_LXC_Tag.sh
# Script to add a systemd service to add the IP address as tags to all LXCs and VMs.

set -euo pipefail

echo "Installing required packages..."
export DEBIAN_FRONTEND=noninteractive
if ! command -v ipcalc >/dev/null 2>&1; then
  apt-get update -qq
  apt-get install -y ipcalc net-tools
fi

echo "Starting deployment of PVE LXC Tag..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/tools/pve/cron-update-lxcs.sh)"
echo "PVE LXC Tag script finished."