#!/bin/bash
# paperless-ngx-ct.sh
# Script to deploy Paperless-ngx CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of HomeBox CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/paperless-ngx.sh)"
echo "Paperless-ngx CT deployment finished."