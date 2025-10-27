# aesir-cluster: High Availability Cluster for Vital Services

![Build Status](https://github.com/OnyxJeff/aesir-cluster/actions/workflows/build.yml/badge.svg)
![Maintenance](https://img.shields.io/maintenance/yes/2025.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![GitHub Release](https://img.shields.io/github/v/release/OnyxJeff/aesir-cluster)
![Issues](https://img.shields.io/github/issues/OnyxJeff/aesir-cluster)

## 📦 Project Overview
`aesir-cluster` is a 3-node Proxmox high availability (HA) infrastructure for vital services. It runs and replicates LXC containers and VMs across **Aesir-1**, **Aesir-2**, and **Aesir-3**, ensuring uptime and reliability for critical apps in the homelab.

## 🖥️ Nodes / Hosts
- `aesir-1` – Primary node (initial deployments)  
- `aesir-2` – Secondary node (HA replication/failover)  
- `aesir-3` – Tertiary node (HA replication/failover)

## 🧰 Containerized / Virtual Services

| Service              | Container Name       | Role / Notes                        |
|--------------------- |--------------------- |------------------------------------ |
| Authelia             | `svc-vor`            | 2FA authentication service          |
| Vaultwarden          | `svc-freya`          | Self-hosted password manager (HA)   |
| Mealie               | `svc-idunn`          | Recipe management                   |
| Beszel               | `svc-draugr`         | Monitoring server                   |
| Firefly III          | `svc-hodr`           | Budgeting software                  |
| Pelican Panel        | `svc-thor`           | Gaming server host                  |
| Gitea                | `svc-urd`            | Self-hosted Git (HA)                |
| HomeBox              | `svc-sif`            | Inventory management                |
| ConvertX             | `svc-svipdagr`       | File conversion                     |
| Nginx Proxy Manager  | `svc-gjallarhorn`    | Reverse proxy (HA)                  |
| Portainer - VM       | `svc-bragi`          | Sonarr/Radarr container management  |

## 🔐 Secrets / Configuration
- Sensitive variables are stored in `.env` files (excluded by `.gitignore`)  
- Public templates provided in `env/` as `.env.example`  

## 📂 Directory Structure
```text
aesir-cluster/
├── containers/
│ ├── Authelia/
│ │ ├── lxc-config.conf
│ │ └── README.md
│ ├── Beszel/
│ │ └── ...
│ └── ...
├── env/
│ ├── gitea.env.example
│ └── media-stack.env.example
├── hardware/
│ └── parts-list.md
├── images/
│ ├── <container>.png
│ ├── <container>.png
│ ├── ...
│ └── ...
├── scripts/
│ ├── deploy.sh
│ └── backup.sh
├── .gitignore
└── README.md
```


## 🚀 Deployment
Use `scripts/LXC/<container-name>/deploy.sh` to:  
1. Create the container on the preferred HA node  
2. Apply configuration from `docker-compose.yml`  
3. Register the container with Proxmox HA  

## 🛡️ Failover / Redundancy
Proxmox replication ensures high availability:  
- Containers are replicated to secondary nodes  
- Auto-start occurs if the primary node goes down  

## 💾 Backup / Storage
- Proxmox replication plus manual backups via `scripts/backup.sh`  
- `.env` templates stored for safe redeployment  

## 📌 TODO / Future Work
- [ ] Add Prometheus & node_exporter containers  
- [ ] Add Uptime Kuma to HA (migrate from Mimir)  
- [ ] Add GitHub Action to validate LXC configs  
- [ ] Complete backup + recovery automation for all containers  

---

📬 Maintained by  
Jeff M. • [@OnyxJeff](https://github.com/OnyxJeff)