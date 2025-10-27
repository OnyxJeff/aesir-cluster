# Firefly III

![Screenshot](../../images/firefly-iii.png)

## 📦 Overview
Firefly III is a self-hosted personal finance manager designed to help track expenses, budgets, and assets securely within your homelab environment.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `firefly-ct.sh`
- CT ID: `20601`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `1 vCPU / 1GB / 2GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Web-based finance management
- MySQL/PostgreSQL backend integration

## 🚀 Usage
- Access via `http://<ip_address>:80`
- Import transactions, categorize budgets, and generate reports

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
  - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container 

## 📌 Notes / TODO
- Set up automated database backups via Proxmox Backup Server
- Integrate Grafana dashboards for expense visualization