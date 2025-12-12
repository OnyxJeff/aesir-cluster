# NetBox

![Screenshot](../../images/netbox.png)

## 📦 Overview
Mealie is a self-hosted recipe manager and meal planner for organizing and sharing recipes across the household.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `netbox-ct.sh`
- CT ID: `20302`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 2GB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Source of truth for everything on your network
- Network automation and observability tools

## 🚀 Usage
- Access via `http://<ip_address>:8000`
- roll out configurations, monitor changes, and accelerate operations across the enterprise

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
  - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container 

## 📌 Notes / TODO
- Enable SSO via Authelia