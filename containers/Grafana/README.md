# Grafana

![Screenshot](../../images/grafana.png)

## 📦 Overview
Grafana is a data visualization and monitoring platform that enables users to query, visualize, alert on and understand metrics, logs, and other data sources.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `grafana-ct.sh`
- CT ID: `20303`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `1 vCPU / 512MB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Inventory management UI
- API for integrations with Home Assistant or Grafana

## 🚀 Usage
- Access via `http://<ip_address>:3000`
- Add categories, items, and custom fields for tracking

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files

## 📌 Notes / TODO
- Integrate with Home Assistant sensors