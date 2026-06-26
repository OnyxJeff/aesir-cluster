# Unifi OS Server

![Screenshot](../../images/unifi.png)

## 📦 Overview
Unifi OS Server is the operating system that powers Ubiquiti's UniFi line of network devices. It provides a centralized platform for managing and monitoring UniFi access points, switches, and security gateways, offering features such as network configuration, device provisioning, and performance analytics.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `unifi-ct.sh`
- CT ID: `20803`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 4GB / 20GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- UniFi Network Controller
- Device adoption and provisioning
- Wireless network management
- VLAN and network configuration
- Client monitoring and analytics
- Traffic inspection and reporting
- Firmware management for UniFi devices

## 🚀 Usage
- Access via `https://<ip_address>:11443`
- Adopt and manage UniFi devices
- Configure wireless networks (SSIDs)
- Manage VLANs and network segments
- Monitor connected clients and device health
- Review traffic statistics and network performance

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files

## 📌 Notes / TODO
- Adopt all production UniFi devices
- Document SSIDs and VLAN assignments
- Configure automated backups
- Integrate device monitoring into Grafana
- Review firmware update schedule