# Uptime Kuma

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

## Tags

### Importance
Critical              #DC2626
High                  #EA580C
Standard              #2563EB
Low                   #6B7280

### Category
Infrastructure        #7C3AED
Networking            #0284C7
Storage               #0F766E
Monitoring            #0891B2
Automation            #16A34A
Media                 #9333EA
Applications          #2563EB
Security              #B91C1C

### Environment (Optional)
Production            #DC2626
Development           #2563EB
Retiring              #78716C

### Special Role (Optional)
HA                    #1D4ED8
VIP                   #7C3AED
Backup                #0F766E
External              #F59E0B