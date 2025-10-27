# <Service Name>

![Screenshot](../../images/authelia.png) <!-- optional -->

## 📦 Overview
Authelia is a self-hosted 2FA authentication portal that provides secure access control for services in the homelab. This container ensures that critical applications are protected with an additional layer of security.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `authelia-ct.sh`  
- CT ID: `20001`  
- OS / Template: Debian-based LXC template (from script)  
- CPU / RAM / Storage: `1 vCPU / 512MB / 2GB`
- Network: Configured via script (bridge and static IP settings)  

## 🧰 Services
- Authelia authentication portal (2FA / SSO)  
- Integration with Nginx Proxy Manager and other protected services  

## 🚀 Usage
- Access the Authelia web portal at `https://auth.<domain.com>`  
- Configure users and access rules according to your homelab needs  

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
  - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container  

## 📌 Notes / TODO
- Ensure the container has a valid TLS certificate for secure access  
- Optional: integrate with LDAP or other identity providers for centralized authentication