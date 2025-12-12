#!/bin/bash
# netbox-ct.sh
# Script to deploy NetBox CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of NetBox CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/netbox.sh)"
echo "NetBox CT deployment finished."