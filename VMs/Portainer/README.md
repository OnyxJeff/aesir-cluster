# <Service Name>

![Logo](../../images/portainer.png) <!-- reference centralized image -->

## 📦 Overview
Brief description of the service and its role in the cluster. Include why it exists and any key functionality.

## 🖥️ Deployment
- Created via Proxmox Helper Script: 
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/vm/ubuntu2504-vm.sh)"
```
- CT/VM ID: `10101`
- OS / Template: `Ubuntu 25.04`
- CPU / RAM / Storage: `4 vCPU / 12GB / 80GB`
- Network: `vmbr0`

## 🧰 Services / Components
Right now this is only running Portainer, but the containers inside are very important for my home production stack:
- Sonarr
  - TV Fetcher
- Radarr
  - Movie Grabber
- Tautulli
  - Plex Stats
- Prowlarr
  - Index Glue
- Overseerr
  - Request Hub
- Jackett
  - Tracker Bridge
- Flaresolverr
  - Bot Bypass
- Homarr
  - Home Dashboard

## 🚀 Usage
Normal ports for each:
| ---- App ---- | -- Port -- | ------------ Access ------------ |
|------         | ---------- | -------------------------------- |
| Sonarr        | 8989       | http://<ip-address or FQDM>:8989 |
| Radarr        | 7878       | http://<ip-address or FQDM>:7878 |
| Tautulli      | 8181       | http://<ip-address or FQDM>:8181 |
| Prowlarr      | 9696       | http://<ip-address or FQDM>:9696 |
| Overseerr     | 5055       | http://<ip-address or FQDM>:5055 |
| Jackett       | 9117       | http://<ip-address or FQDM>:9117 |
| Flaresolverr  | 8191       | http://<ip-address or FQDM>:8191 |
| Homarr        | 7575       | http://<ip-address or FQDM>:7575 |

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files  

## 📌 Notes / TODO
- Developing "one-click" script to deploy contents of VM after creation