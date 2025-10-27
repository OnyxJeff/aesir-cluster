#!/bin/bash
# beszel-ct.sh
# Script to deploy Beszel CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Beszel CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/beszel.sh)"
echo "Beszel CT deployment finished."