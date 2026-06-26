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
- Web-based dashboard and visualization platform
- Alerting and notification management
- Data source integration (Prometheus, Loki, PostgreSQL, etc.)
- Dashboard sharing and reporting

## 🚀 Usage
- Access via `http://<ip_address>:3000`
- Log in with Grafana credentials
- Configure data sources
- Import or create dashboards
- Configure alert rules and notification channels

## 🔐 Configuration
- Primary configuration file: `/etc/grafana/grafana.ini`
- Data stored in: `/var/lib/grafana`
- Logs stored in: `/var/log/grafana`
- Additional settings may be managed through environment variables or container-specific configuration files

## 📌 Notes / TODO
- Create homelab overview dashboard
- Import Proxmox monitoring dashboards
- Configure Discord alert notifications
- Add Home Assistant metrics
- Create public-safe dashboards for status displays