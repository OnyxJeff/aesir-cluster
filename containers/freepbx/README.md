# ☎️ FreePBX Docker Stack

[![Docker](https://img.shields.io/badge/Docker-FreePBX-blue?logo=docker)]

FreePBX is a web-based open-source GUI that controls and manages Asterisk (the world’s most popular open-source PBX). This Docker stack gets your phone system running fast.

---

## 🚀 What’s Inside?

- **Asterisk PBX** – The telephony engine
- **FreePBX GUI** – Manage extensions, trunks, IVRs, and more
- **Database** – MySQL/MariaDB backend for configs
- Optional SSL & port forwarding support

---

## 🔧 Installation

### 1. Create `.env` file

Copy from `.env.example` and set variables:

```bash
# Example variables:
TZ=America/New_York
DB_USER=freepbxuser
DB_PASS=supersecurepassword
AMPDBUSER=freepbxuser
AMPDBPASS=supersecurepassword
VIRTUAL_HOST=freepbx.yourdomain.com
```

### 2. Start the stack
```bash
docker-compose up -d
```
### 3. Access FreePBX Web GUI
Open browser to: http://<your-server-ip>:8080

---

## ⚙️ Environment Variables
| Variable             | Description                   | Example              |
| -------------------- | ----------------------------- | -------------------- |
| `TZ`                 | Timezone                      | `America/New_York`   |
| `FREEPBX_DB_USER`    | Database user for FreePBX     | `freepbx`            |
| `FREEPBX_DB_PASS`    | Database password             | `yourStrongPassword` |
| `FREEPBX_ADMIN_PASS` | Admin password for FreePBX UI | `adminPassword`      |

---

## 🧰 Volumes
- /etc/asterisk – Asterisk config files (persistent)
- /var/lib/mysql – Database storage
- /var/www/html – FreePBX web files

---

## ⚠️ Notes
- Change default passwords immediately
- Backup configs regularly (consider snapshot or bind mounts)
- Secure your PBX behind a firewall or VPN (don’t expose SIP ports publicly unless you know what you’re doing)
- Use Fail2Ban or similar tools to reduce brute-force risks

---

## 🛠️ Maintenance
- Update images regularly (docker pull)
- Check logs via docker logs freepbx
- Restart with docker-compose restart freepbx

---

## 📚 References
- [FreePBX Official](https://www.freepbx.org/)
- [Asterisk](https://www.asterisk.org/)
- [Docker FreePBX Image](https://hub.docker.com/r/tiredofit/freepbx)

---

## 💡 Homelab Notes
- Running on Aesir 1 or dedicated homelab node
- Integrates with your internal network and SIP providers
- Perfect for testing or small office phone systems