# NetBox

![Screenshot](../../images/netbox.png)

## 📦 Overview
NetBox is the authoritative source of truth for my homelab network—IPAM, DCIM, racks, devices, and their relationships. One place, accurate data, zero chaos.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `netbox-ct.sh`
- CT ID: `20302`
- OS / Template: Debian-based LXC template (from script)
- CPU / RAM / Storage: `2 vCPU / 2GB / 4GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 What It Does
- Centralized IPAM, DCIM, and infrastructure inventory
- Models physical and logical network relationships
- Foundation for automation, documentation, and visibility

## 🚀 Usage
- Access via `https://<ip_address>`
- Track infrastructure changes, validate configs, and drive automation with confidence

## 🔐 Configuration
- Environment variables and secrets are provisioned by the helper script and `.settings` files  
  - Example references in `lxc-config.conf`
- Persistent configuration stored in the `/config` volume mounted in the container

## 📌 Notes / TODO
- Lock down access via Cloudflare Tunnel
- Back up NetBox data off the Proxmox host
- Clean up tags, roles, and naming conventions
- Explore plugins once core data is stable