#!/bin/bash
# gitea-ct.sh
# Script to deploy Gitea CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Gitea CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/gitea.sh)"
echo "Gitea CT deployment finished."