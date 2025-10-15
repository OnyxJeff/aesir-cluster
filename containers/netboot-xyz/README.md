# Netboot.xyz – Network Boot Loader

[![Docker](https://img.shields.io/badge/Docker-Netboot.xyz-blue?logo=docker)](https://hub.docker.com/r/netbootxyz/netbootxyz)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/netbootxyz/netboot.xyz)

---

## What is Netboot.xyz?

Netboot.xyz lets you boot computers on your network using PXE with a flexible menu of OS installers and utilities — ideal for network admins and homelabs.

---

## Installation

### 1. Run:

```bash
docker-compose up -d
```

### 2. Configure DHCP/PXE server to point to this container for network boot.

### 3. Access web UI (if configured) or use PXE boot on client devices.

---

## 🔑 Volumes
- Config files if needed, depending on your setup.

## 📡 Ports
- Typically uses UDP 67/69 and TCP 69 for DHCP/TFTP (check your compose).

## 🧠 Notes
- PXE boot requires DHCP server config changes pointing to this service.
- Great for installing OSes without USB drives.