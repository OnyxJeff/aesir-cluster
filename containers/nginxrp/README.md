# Nginx Proxy Manager (NginxRP) – Easy Reverse Proxy Management

[![Docker](https://img.shields.io/badge/Docker-Nginx%20Proxy%20Manager-blue?logo=docker)](https://hub.docker.com/r/jc21/nginx-proxy-manager)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/jc21/nginx-proxy-manager)

---

## What is Nginx Proxy Manager?

Nginx Proxy Manager provides a friendly web interface to manage Nginx proxy hosts, SSL certificates, and redirects—great for simplifying your reverse proxy setup in your homelab.

---

## 📦 Installation

### 1. Create your `.env` file (set PUID, PGID, TZ).  
### 2. Run:

```bash
docker-compose up -d
```
### 3. Access the web UI at http://<host-ip>:81

### 4. Default login:
- Email: admin@example.com
- Password: changeme

---

## 🔑 Volumes
- /data – DB and configs
- /letsencrypt – SSL certs

---

## 🛠️ Environment Variables
- TZ – Timezone

---

## 🧠 Notes
- Use this to manage SSL and proxy hosts without editing Nginx configs manually.
- Set up DNS and ports as needed for your services.