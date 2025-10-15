# Media-Stack – Your Ultimate Media Management Suite

[![Docker](https://img.shields.io/badge/Docker-Media%20Stack-blue?logo=docker)](https://github.com/yourusername/your-media-stack-repo)
[![GitHub](https://img.shields.io/badge/GitHub-Repo-000?logo=github)](https://github.com/yourusername/your-media-stack-repo)

---

## What is Media-Stack?

A collection of media server containers working together: Sonarr, Radarr, Lidarr, Bazarr, Jackett, Overseerr, Prowlarr, Tautulli, Homarr, and FlareSolverr to automate and manage your movies, TV, music, and more.

---

## Installation

### 1. Set environment variables (`PUID`, `PGID`, `TZ`, `USERDIR`) in `.env`.  
### 2. Run:

```bash
docker-compose up -d
```

### 3. Access services individually on their respective ports.

| Services      | Ports |
|---------------|-------|
| Sonarr:       | 8989  |
| Radarr:       | 7878  |
| Lidarr:       | 8686  |
| Bazarr:       | 6767  |
| Jackett:      | 9117  |
| Overseerr:    | 5055  |
| Prowlarr:     | 9696  |
| Tautulli:     | 8181  |
| Homarr:       | 7575  |
| FlareSolverr: | 8191  |

---

## 🔑 Volumes
- Each service stores its config and data under ${USERDIR}/docker/<service> and accesses media under /mnt.

## 🧠 Notes
- Make sure your media paths are correct and accessible inside containers.
- Homarr is your dashboard — customize it to monitor and launch your media tools.