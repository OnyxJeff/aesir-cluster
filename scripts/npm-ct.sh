#!/bin/bash
# npm-ct.sh
# Script to deploy Nginx Proxy Manager CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Nginx Proxy Manager CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/nginxproxymanager.sh)"
echo "Nginx Proxy Manager CT deployment finished."