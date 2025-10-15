# ha-aesir: High Availability Cluster for Vital Services

![Build Status](https://github.com/OnyxJeff/ha-aesir/actions/workflows/build.yml/badge.svg)
![Maintenance](https://img.shields.io/maintenance/yes/2025.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![GitHub release](https://img.shields.io/github/v/release/OnyxJeff/ha-aesir)
![Issues](https://img.shields.io/github/issues/OnyxJeff/ha-aesir)

## 📦 Project Overview
This repository manages the high availability (HA) setup of the Aesir cluster — a 3-node Proxmox-based infrastructure for vital services. It uses LXC containers and VMs to run and replicate critical apps across Aesir-1, Aesir-2, and Aesir-3.

## 🖥️ Nodes
- `ha-aesir-1` – Primary node (initial deployments)
- `ha-aesir-2` – Secondary node (HA replication/failover)
- `ha-aesir-3` – Tertiary node (HA replication/failover)

## 🧱 Containerized/Virtual Services
| Service              | LXC Container Name   | HA Role          | Notes                            |
| -------------------- | -------------------- | ---------------- | -------------------------------- |
| Authelia             | `svc-vor`            | Active           | 2FA Auth                         |
| Vaultwarden          | `svc-freya`          | Active/Failover  | Self-hosted Password Manager     |
| Mealie               | `svc-idunn`          | Active           | Self-hosted Recipe Manager       |
| Beszel               | `svc-draugr`         | Active           | Monitoring Server                |
| Firefly III          | `svc-hodr`           | Active           | Budgeting Software               |
| Pelican Panel        | `svc-thor`           | Active           | Gaming Server Host               |
| Gitea                | `svc-urd`            | Active/Failover  | Self-hosted Git                  |
| HomeBox              | `svc-sif`            | Active           | Inventory Management             |
| ConvertX             | `svc-svipdagr`       | Active           | File Conversion                  |
| Nginx Proxy Manager  | `svc-gjallarhorn`    | Active/Failover  | Reverse proxy for services       |
| Portainer - VM       | `svc-bragi`          | Active/Failover  | Sonarr, Radarr, etc.             |

## 🔐 Secrets Management
- All sensitive variables are stored in `.env` files (excluded by `.gitignore`)
- Public templates are stored in `env/` as `.env.example` files

## 📂 Directory Structure
```
ha-aesir/
├── containers/
│   ├── gitea/
│   │   ├── lxc-config.yaml
│   │   └── docker-compose.yml
│   ├── netboot-xyz/
│   │   └── ...
│   └── ...
├── env/
│   ├── gitea.env.example
│   └── media-stack.env.example
├── scripts/
│   ├── deploy.sh
│   └── backup.sh
├── .gitignore
└── README.md
```

## 🚀 Deployment
Use `scripts/LXC/<container-name>/deploy.sh` to:
- Create the container on the preferred HA node
- Apply configs from `docker-compose.yml`
- Register the container with Proxmox HA

## 🛡️ Failover
Failover is managed using Proxmox’s built-in Replication. Some containers live on another node in case of failure and will auto-start in the event it's "home" node goes down.

## 📌 TODO
- [ ] Add Prometheus & node_exporter containers
- [ ] Add Uptime Kuma to HA (migrate from Mimir)
- [ ] Add GitHub Action to validate LXC configs
- [ ] Add backup + recovery automation for all containers

---

📬 Maintained By
Jeff M. • [@OnyxJeff](https://github.com/OnyxJeff)