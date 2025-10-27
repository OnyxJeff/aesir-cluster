#!/bin/bash
# authelia-ct.sh
# Script to deploy Authelia CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Authelia CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/authelia.sh)"
echo "Authelia CT deployment finished."