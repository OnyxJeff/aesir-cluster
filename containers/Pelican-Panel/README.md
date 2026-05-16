# Pelican Panel

![Screenshot](../../images/pelican-panel.png)

## 📦 Overview
Pelican Panel is a self-hosted game server management platform designed for running and monitoring multiple servers like Minecraft and Palworld.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `pelican-panel-ct.sh`
- CT ID: `20701`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 1GB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Web-based control panel for games
- Integrated with Wings agents on other nodes

## 🚀 Usage
- Access via `http://<ip_address>:80`
- Configure games, servers, and user roles

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files

## 📌 Notes / TODO
- Enable WebSocket SSL for Wings agents
- Integrate Grafana dashboards for server metrics