# <Service Name>

![Screenshot](../../images/<service-name>.png) <!-- reference centralized image -->

## 📦 Overview
Brief description of the service and its role in the cluster. Include why it exists and any key functionality.

## 🖥️ Deployment
- Created via Proxmox Helper Script: `<script-name>`  
- CT/VM ID: `<id>`  
- OS / Template: `<template>`  
- CPU / RAM / Storage: `<resources>`  
- Network: `<bridge/static IP/etc>`  

## 🧰 Services / Components
List the main services, applications, or components running inside this container/VM.

## 🚀 Usage
Instructions for accessing or using the service (web portal URL, ports, login info if safe to document).

## 🔐 Configuration
- Environment variables and secrets are set via the helper script and `.settings` files
- - examples in `lxc-config.conf`
- Configuration files stored inside `/config` volume mounted in the container  

## 📌 Notes / TODO
- Optional additional instructions, planned improvements, or troubleshooting notes
