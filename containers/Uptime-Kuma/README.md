# Pelican Panel

![Screenshot](../../images/uptime-kuma.png)

## 📦 Overview
Uptime Kuma is a monitoring and alerting system that tracks the availability and performance of servers, websites, and other internet-connected devices.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `uptime-kuma-ct.sh`
- CT ID: `20302`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `1 vCPU / 1GB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Web-based visual uptime monitoring
- Notifications via email, discord webhooks, etc.

## 🚀 Usage
- Access via `http://<ip_address>:3001`
- Configure servers, network paths, URLs, etc.

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files