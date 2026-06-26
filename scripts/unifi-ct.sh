#!/bin/bash
# unifi-ct.sh
# Script to deploy Unifi OS Server CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Unifi OS Server CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/unifi-os-server.sh)"
echo "Unifi OS Server CT deployment finished."