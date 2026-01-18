# Gitea

![Screenshot](../../images/gitea.png)

## 📦 Overview
Gitea is a lightweight, self-hosted Git service similar to GitHub. It manages code repositories, issues, and CI/CD pipelines for the homelab.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `gitea-ct.sh`
- CT ID: `21501`
- OS / Template: Alpine-based LXC template (from script)
- CPU / RAM / Storage: `1 vCPU / 256MB / 1GB`
- Network: Configured via script (bridge and static IP settings)

## 🧰 Services
- Git repository hosting
- Integrated CI/CD and issue tracking

## 🚀 Usage
- Access via `http://<ip_address>:3000`
- Create organizations and repos for local projects

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `*.vars` files 

## 📌 Notes / TODO
- Configure OAuth login via Authelia for unified access
- Enable webhook integration with Grafana or Discord