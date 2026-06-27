# <Service Name>

![Logo](../../images/portainer.png) <!-- reference centralized image -->

## 📦 Overview
Portainer is my docker compose hub of choice. I run all of my media stack in this VM for shared resources, networking, and mounted storage.

## 🖥️ Deployment
- Created via Proxmox Helper Script: 
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/vm/ubuntu2404-vm.sh)"
```
- CT/VM ID: `10101`
- OS / Template: `Ubuntu 24.04.3 LTS`
- CPU / RAM / Storage: `4 vCPU / 8GB / 80GB`
- Network: `vmbr0`

## 🧰 Services / Components
Right now this is only running Portainer, but the containers inside are very important for my home production stack:


## 🚀 Usage
Normal ports for each:
| App | Port | Access |
|---------------|--------|------------------------------------|
| Sonarr        | `8989` | `http://<ip-address or FQDN>:8989` |
| Radarr        | `7878` | `http://<ip-address or FQDN>:7878` |
| Tautulli      | `8181` | `http://<ip-address or FQDN>:8181` |
| Prowlarr      | `9696` | `http://<ip-address or FQDN>:9696` |
| Overseerr     | `5055` | `http://<ip-address or FQDN>:5055` |
| Jackett       | `9117` | `http://<ip-address or FQDN>:9117` |
| Flaresolverr  | `8191` | `http://<ip-address or FQDN>:8191` |
| Homarr        | `7575` | `http://<ip-address or FQDN>:7575` |

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files

```bash
sudo mkdir /home/portainer/docker
sudo mkdir /home/portainer/docker/prometheus
sudo mkdir /home/portainer/docker/grafana
sudo mkdir /home/portainer/docker/blackbox
sudo mkdir /home/portainer/docker/graphite
```
```bash
sudo chown 1000:1000 /home/portainer/docker
sudo chown 65534:65534 /home/portainer/docker/prometheus
sudo chown 472:472 /home/portainer/docker/grafana
```

## 📌 Notes / TODO
- Developing "one-click" script to deploy contents of VM after creation