#!/bin/bash
# firefly-ct.sh
# Script to deploy Firefly-III CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Firefly-III CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/firefly.sh)"
echo "Firefly-III CT deployment finished."