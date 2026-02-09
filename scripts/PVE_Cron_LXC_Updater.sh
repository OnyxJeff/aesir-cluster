#!/bin/bash
# PVE_Cron_LXC_Updater.sh
# Script to add a CronJob to update all LXCs that are present on current node.

set -euo pipefail

echo "Starting deployment of PVE Post Install Script..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/tools/pve/cron-update-lxcs.sh)"
echo "PVE Post Install script finished."