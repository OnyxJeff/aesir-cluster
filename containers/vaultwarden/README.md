# 🔐 Vaultwarden (Bitwarden-Compatible Password Manager)

[![Docker](https://img.shields.io/badge/Docker-Vaultwarden-blue?logo=docker)](https://hub.docker.com/r/vaultwarden/server)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/dani-garcia/vaultwarden)

Vaultwarden is a lightweight, self-hosted implementation of the Bitwarden server API written in Rust. Ideal for running in a homelab or personal cloud setup.

---

## ⚡ Features

- Fully compatible with official Bitwarden clients
- Lightweight and fast (Rust-powered)
- Easy Docker deployment
- Encrypted vaults + two-factor support
- Offline access, sync, organizations, attachments, and more

---

## 📦 Setup Instructions

### 1. 📁 Directory Structure
```bash
~/containers/vaultwarden/
├── docker-compose.yml
└── .env
```
## 🛠️ Environment Configuration
Edit .env:

```bash
TZ=America/New_York
USERDIR=/mnt/data
DOMAIN=https://vault.yourdomain.com
```
Adjust USERDIR and DOMAIN to match your setup.

## 🐳 Docker Compose
docker-compose.yml
```bash
version: "3.8"

services:
  vaultwarden:
    image: vaultwarden/server:latest
    container_name: vaultwarden
    restart: unless-stopped
    environment:
      - TZ=${TZ}
      - DOMAIN=${DOMAIN}
    volumes:
      - ${USERDIR}/docker/vaultwarden:/data
    ports:
      - "8222:80"
```
## 🔐 Reverse Proxy (Optional)
Recommended for SSL + remote access. Use Nginx Proxy Manager, Caddy, or Traefik.

Example proxy config:
```bash
Domain: vault.yourdomain.com
Forward to: http://<vaultwarden-host-ip>:8222
```
## 🔑 First-Time Login
- Open your browser to http://<host-ip>:8222
- Register your first account

Admin console:
Set an admin token in .env:
```bash
ADMIN_TOKEN=YourSecureAdminTokenHere
```
Then access via http://<host-ip>:8222/admin

## 🧠 Notes
- Set up backups for /vaultwarden/data
- Admin UI allows user management, SMTP, 2FA enforcement, etc.
- Compatible with Bitwarden mobile, browser extensions, and desktop apps

## 📚 Resources
- [Vaultwarden GitHub](https://github.com/dani-garcia/vaultwarden)
- [Bitwarden Clients](https://bitwarden.com/download/)
- [Docker Hub Image](https://hub.docker.com/r/vaultwarden/server)