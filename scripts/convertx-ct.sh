#!/bin/bash
# convertx-ct.sh
# Script to deploy Beszel CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of ConvertX CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/convertx.sh)"
echo "ConvertX CT deployment finished."