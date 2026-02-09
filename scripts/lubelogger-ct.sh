#!/bin/bash
# lubelogger-ct.sh
# Script to deploy LubeLogger CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of HomeBox CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/lubelogger.sh)"
echo "LubeLogger CT deployment finished."