#!/bin/bash
# pelican-ct.sh
# Script to deploy Pelican Panel CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Pelican Panel CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/pelican-panel.sh)"
echo "Pelican Panel CT deployment finished."