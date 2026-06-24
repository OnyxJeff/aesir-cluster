#!/bin/bash
# grafana-ct.sh
# Script to deploy Grafana CT via ProxmoxVE helper script

set -euo pipefail

echo "Starting deployment of Grafana CT..."
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/ct/grafana.sh)"
echo "Grafana CT deployment finished."