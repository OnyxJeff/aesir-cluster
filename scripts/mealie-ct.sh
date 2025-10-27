#!/bin/bash
# mealie-ct.sh
# Script to deploy Mealie CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Mealie CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/mealie.sh)"
echo "Mealie CT deployment finished."