# Nginx Proxy Manager

![Screenshot](../../images/nginx-proxy-manager.png)

## 📦 Overview
Nginx Proxy Manager (NPM) is a reverse proxy management UI for routing and securing all homelab web services behind a single entry point.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `nginx-proxy-manager-ct.sh`
- CT ID: `20801`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 1GB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Reverse proxy and SSL management
- Web UI for routing and certificates

## 🚀 Usage
- Access via `http://<ip_address>:81`
- Add and manage proxy hosts, redirections, and streams

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files

## 📌 Notes / TODO
- Set Authelia as authentication provider for admin interface
- Automate SSL renewals via DNS challenge