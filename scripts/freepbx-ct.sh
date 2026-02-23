#!/bin/bash
# freepbx-ct.sh
# Script to deploy FreePBX CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of FreePBX CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/freepbx.sh)"
echo "FreePBX CT deployment finished."