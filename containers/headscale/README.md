# 🧠 Headscale – Self-Hosted Tailscale Control Server

[![Docker](https://img.shields.io/badge/Docker-Headscale-blue?logo=docker)](https://hub.docker.com/r/headscale/headscale)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/juanfont/headscale)

Headscale is an open-source implementation of the Tailscale coordination server (control plane), allowing you to self-host a secure, private mesh VPN using the official Tailscale clients.

## 🏗️ Features
- Self-hosted WireGuard mesh VPN
- No cloud dependencies
- Works with official Tailscale clients (iOS, Android, Windows, macOS, Linux)
- Fully customizable ACLs, namespaces, and IP routing

---

## 📦 Setup Instructions

### 1. 📁 Clone the Repo / Create Your Folder
```bash
mkdir -p ~/docker/headscale
cd ~/docker/headscale
```
---

### 2. ⚙️ Customize Environment
Copy .env.example to .env and modify values as needed:
```bash
cp .env.example .env
```
Set your timezone (example: America/New_York).

---

### 3. 🐳 Run with Docker Compose
```bash
docker-compose up -d
```
This will launch the container, bind ports, and initialize Headscale with default settings.

---

## 🧪 First-Time Setup
- Create a Namespace:
```bash
docker exec -it headscale headscale namespaces create jeff
```
- Create an Auth Key:
```bash
docker exec -it headscale headscale preauthkeys create --reusable --ephemeral --namespace jeffm
```
Copy the key it generates.
- Connect a Device:
Install the official Tailscale client and run:
```bash
tailscale up --login-server https://headscale.yourdomain.com --authkey <your-key-here>
```
Replace yourdomain.com with your real domain or external IP.

## 📡 Ports
| Port     | Description            |
| -------- | ---------------------- |
| 8080     | Headscale API/Web      |
| 3478/udp | STUN for NAT traversal |

---

## 🛡️ Security Notes
- Use HTTPS in production via reverse proxy (e.g., Nginx Proxy Manager)
- Enable firewall rules to restrict unwanted traffic
- Rotate pre-auth keys periodically

## 📚 Resources
- [Headscale GitHub](https://github.com/juanfont/headscale)
- [Tailscale Clients](https://tailscale.com/download)
- [WireGuard Protocol](https://www.wireguard.com)

## 🧰 Optional Enhancements
- Add persistent volumes for backups
- Integrate with Grafana for connection metrics (via Prometheus exporter)
- Use Headscale ACL files for fine-grained access control

## 💬 Support
This repo is part of the ha-aesir cluster stack. Contributions welcome.