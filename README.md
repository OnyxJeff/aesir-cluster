# Aesir-Cluster

![Build Status](https://github.com/OnyxJeff/aesir-cluster/actions/workflows/build.yml/badge.svg)
![Maintenance](https://img.shields.io/maintenance/yes/2026.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![GitHub Release](https://img.shields.io/github/v/release/OnyxJeff/aesir-cluster)
![Issues](https://img.shields.io/github/issues/OnyxJeff/aesir-cluster)

![logo (not mine/borrowed)](../images/aesir.png)

Aesir is the high-availability powerhouse of the homelab — a 3-node cluster built to run the services that actually matter.  
If Vanir is the plucky sidekick, Aesir is the fully armored tank that volunteers for every dangerous job.

### 🧭 Purpose
Aesir houses critical services, media orchestration tools, authentication, financial management, dashboards, Git hosting, and more.  
If a service going down would make you swear loudly, it probably lives here.

### 🏗️ Current Highlights
- 3-node HA cluster (because redundancy is a lifestyle)
- Full “darr” media automation stack running inside a Portainer VM
- Primary LXC lineup: Vaultwarden, NPM, Mealie, Beszel, Firefly III, Gitea, Pelican-Panel, HomeBox, ConvertX
- Designed to be stable, resilient, and only occasionally dramatic


## 🧰 Containerized / Virtual Services

| Service              | Container Name       | Role / Notes                        |
|--------------------- |--------------------- |------------------------------------ |
| Portainer - VM       | `svc-bragi`          | Sonarr/Radarr container management  |
| Vaultwarden          | `svc-freya`          | Self-hosted password manager (HA)   |
| HomeBox              | `svc-sif`            | Inventory management                |
| Firefly III          | `svc-hodr`           | Budgeting software                  |
| Gitea                | `svc-urd`            | Self-hosted Git (HA)                |
| Pelican Panel        | `svc-thor`           | Gaming server host                  |
| ConvertX             | `svc-svipdagr`       | File conversion                     |
| Beszel               | `svc-draugr`         | Monitoring server                   |
| Mealie               | `svc-idunn`          | Recipe management                   |
| Nginx Proxy Manager  | `svc-gjallarhorn`    | Reverse proxy (HA)                  |
| NetBox               | `svc-saga`           | Network observability               |

## 🔐 Secrets / Configuration
- Sensitive variables are stored in `.env` files (excluded by `.gitignore`)  
- Public templates provided in `vars/` as `.vars.example`  

## 📂 Directory Structure
```text
aesir-cluster/
├── containers/
│ ├── Beszel/
│ │ └── README.md
│ ├── ConvertX/
│ │ └── ...
│ └── ...
├── hardware/
│ └── parts-list.md
├── images/
│ ├── <container>.png
│ ├── <container>.png
│ ├── ...
│ └── ...
├── scripts/
│ ├── <container>-ct.sh
│ ├── <container>-ct.sh
│ ├── ...
│ └── ...
├── vars/
│ ├── <container>.vars.example
│ ├── <container>.vars.example
│ └── ...
├── VMs/
│ ├── Future_VM/
│ │ └── README.md
│ ├── Portainer/
│ │ ├── docker-compose.yml
│ │ ├── media-stack.env.example
│ │ └── README.md
│ └── ...
├── .gitignore
├── ID-naming-scheme.md
├── LICENSE
├── README.md
└── script-runner.sh 
```

## 🚀 Deployment
1. move the contents of the `vars/` folder to correct folder with the following command:
```bash
mv ~aesir-cluster/vars/* /usr/local/community-scripts/defaults/
```
Use `~aesir-cluster/script-runner.sh` to:  
2. Create the container on the preferred HA node  
3. Apply configuration from your preconfigured `*.vars`
4. Register the container with Proxmox HA  

## 🛡️ Failover / Redundancy
Proxmox replication ensures high availability:
- Containers are replicated to secondary nodes
- Auto-start occurs if the primary node goes down

## 💾 Backup / Storage
- Proxmox replication across nodes plus automatic backups via Proxmox Backup Server
- `.vars` templates stored for safe redeployment  

## 📌 TODO / Future Work
- [ ] Add Prometheus & node_exporter containers  
- [ ] Add Uptime Kuma to HA (migrate from Mimir)  
- [ ] Add GitHub Action to validate LXC configs  
- [ ] Complete backup + recovery automation for all containers  

---

📬 Maintained by  
Jeff M. • [@OnyxJeff](https://github.com/OnyxJeff)