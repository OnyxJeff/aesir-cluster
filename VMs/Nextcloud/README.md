# <Service Name>

![Logo](../../images/nextcloud.png) <!-- reference centralized image -->

## 📦 Overview
Nextcloud is an experiment. I want to test it out so I have a centralized cloud storage and management hub (to replace Google Drive).

## 🖥️ Deployment
- Created via Proxmox Helper Script: 
```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/vm/nextcloud-vm.sh)"
```
- CT/VM ID: `10401`
- OS / Template: `Debian 13`
- CPU / RAM / Storage: `2 vCPU / 2GB / 12GB`
- Network: `vmbr0`

## 🚀 Usage
Normal ports for each:
| App | Port | Access |
|---------------|---------|--------------------------------------|
| Web           | `80`    | `http://<ip-address or FQDN>`        |
| Web           | `443`   | `https://<ip-address or FQDN>`       |
| Webmin        | `12321` | `https://<ip-address or FQDN>:12321` |
| Adminer       | `12322` | `https://<ip-address or FQDN>:12322` |

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files  

## 📌 Notes / TODO
- Developing "one-click" script to deploy contents of VM after creation