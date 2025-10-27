# ConvertX

![Screenshot](../../images/convertx.png)

## 📦 Overview
ConvertX is a self-hosted file conversion and transcoding service that automates converting media, documents, and archives between formats — ideal for multi-purpose homelab automation.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `convertx-ct.sh`
- CT ID: `21201`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 4GB / 20GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Automatic conversion via API or web interface
- Integrates with Nginx Proxy Manager for external access

## 🚀 Usage
- Access via `http://<ip_address>:3000`
- Upload files or send them via API for auto-processing

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
  - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container 

## 📌 Notes / TODO
- Optional: integrate queue monitoring or automation with Home Assistant