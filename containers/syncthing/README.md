# Syncthing – Continuous File Synchronization

[![Docker](https://img.shields.io/badge/Docker-Syncthing-blue?logo=docker)](https://hub.docker.com/r/syncthing/syncthing)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/syncthing/syncthing)

---

## What is Syncthing?

Syncthing is an open-source, peer-to-peer file synchronization tool. It syncs files securely and continuously across devices without relying on any centralized server or cloud.

---

## ⚡ Features

- Real-time, encrypted file syncing  
- Cross-platform support (Windows, Linux, macOS, Android)  
- No cloud — fully peer-to-peer  
- Web UI for easy management  

---

## 📦 Installation

### 1. Create a `.env` file with your desired config (optional).  
### 2. Run:

```bash
docker-compose up -d
```
### 3. Access the Syncthing web UI at http://<host-ip>:8384 to set up folders and devices.

---

## 🔑 Volumes
- /config – Syncthing configuration files
- /data – directory to sync

---

## 🛠️ Environment Variables
- PUID – User ID for permissions
- PGID – Group ID for permissions
- TZ – Timezone

---

## 🧠 Notes
- Make sure your firewall allows port 8384 (web UI) and 22000 (sync traffic).
- Use Syncthing’s device pairing for secure connections.