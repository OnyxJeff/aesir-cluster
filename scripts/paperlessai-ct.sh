#!/bin/bash
# paperlessai-ct.sh
# Script to deploy PaperlessAI CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of HomeBox CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/paperless-ai.sh)"
echo "PaperlessAI CT deployment finished."