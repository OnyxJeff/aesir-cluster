# Mealie

![Screenshot](../../images/mealie.png)

## 📦 Overview
Mealie is a self-hosted recipe manager and meal planner for organizing and sharing recipes across the household.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `mealie-ct.sh`
- CT ID: `20603`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 2GB / 10GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Recipe management web app
- API for grocery lists and nutrition data

## 🚀 Usage
- Access via `http://<ip_address>:9000`
- Import, tag, and categorize recipes
- Sync data with Home Assistant (optional)

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
  - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container 

## 📌 Notes / TODO
- Enable SSO via Authelia
- Automate meal planning via Home Assistant