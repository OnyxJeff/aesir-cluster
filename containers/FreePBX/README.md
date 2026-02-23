# FreePBX

![Screenshot](../../images/freepbx.png)

## 📦 Overview
FreePBX is a web-based management interface for Asterisk that provides a full-featured PBX (Private Branch Exchange) system. It handles VoIP extensions, trunks, call routing, voicemail, IVRs, and more—basically your homelab’s phone brain.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `freepbx-ct.sh`
- CT ID: `20601`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 2GB / 10GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- SIP extension management
- VoIP trunk configuration (SIP providers or internal trunks)
- IVR (auto-attendant) menus
- Voicemail and call recording
- Ring groups and call queues
- Time-based routing

## 🚀 Usage
- Access via `http://<ip_address>`
- Log in to the Admin panel to configure extensions, trunks, and inbound/outbound routes
- Connect softphones (e.g., Zoiper, Linphone) or physical SIP phones using created extensions

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files 
- SIP credentials generated per extension
- Firewall rules configured to allow SIP (typically 5060) and RTP ports
- Secure admin panel with strong credentials and (ideally) HTTPS
- Backups configured via the built-in Backup & Restore module

## 📌 Notes / TODO
- Configure TLS for SIP and enable SRTP
- Lock down SIP with fail2ban and firewall rules
- Set up automated backups to NAS or offsite storage
- Integrate with monitoring (Uptime Kuma / Grafana) for service visibility