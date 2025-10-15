#!/bin/bash

# === Aesir-1 Backup Script ===
# Back up critical container volumes

BACKUP_DIR="/mnt/backup/aesir-1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"

echo "Starting backup at $TIMESTAMP"

# Portainer
docker run --rm --volumes-from portainer -v "$BACKUP_DIR":/backup alpine \
  tar czf /backup/portainer_${TIMESTAMP}.tar.gz -C /data .

# NPM
docker run --rm --volumes-from nginx-proxy-manager -v "$BACKUP_DIR":/backup alpine \
  tar czf /backup/npm_${TIMESTAMP}.tar.gz -C /data .

# Darr Stack Apps
for svc in sonarr radarr lidarr; do
  docker run --rm --volumes-from $svc -v "$BACKUP_DIR":/backup alpine \
    tar czf /backup/${svc}_${TIMESTAMP}.tar.gz -C /config .
done

echo "Backup completed."