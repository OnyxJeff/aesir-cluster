#!/bin/bash
# homebox-ct.sh
# Script to deploy HomeBox CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of HomeBox CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/homebox.sh)"
echo "HomeBox CT deployment finished."