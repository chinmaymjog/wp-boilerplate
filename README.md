# 🎡 WordPress Enterprise Boilerplate (AKS)

This repository provides a production-ready boilerplate for deploying WordPress at scale on **Azure Kubernetes Service (AKS)**. It follows enterprise best practices for containerization, persistent storage, and automated CI/CD.

## ✨ Key Features

- **Dockerized WordPress**: Optimized PHP-FPM and Nginx configuration for high-traffic sites.
- **Enterprise CI/CD**: Comprehensive GitLab CI/CD pipeline covering:
  - Secret Detection
  - Automated Database Migrations & Search-Replace
  - Asset Synchronization via Azure FileShare
  - Blue/Green style deployments via Helm
- **Stateless Architecture**: Engineered for Kubernetes with externalized storage and database.
- **Developer Workflow**: Built-in support for Development, Staging, and Production environments.

## 🧱 Ecosystem Integration

This boilerplate is part of a modular WordPress ecosystem:
- **[wp-base](https://github.com/your-username/wp-base)**: The hardened, optimized PHP-FPM base image.
- **[themes-plugins](https://github.com/your-username/themes-plugins)**: a centralized repository for managing multi-tenant themes and plugins.

## 📁 Project Structure

```text
.
├── src/                  # WordPress source code (themes, plugins)
├── deploy/               # Helm charts and Kubernetes manifests
├── dockerfile            # Optimized WordPress Docker image
├── docker-compose.yml    # Local development environment
└── .gitlab-ci.yml        # Enterprise deployment pipeline
```

## 🚀 How to Use

1. **Local Dev**: Run `docker-compose up` to start a local instance.
2. **Cloud Deploy**: Configure your Azure/GitLab variables and push to the `main` branch for Staging deployment. Create a version tag (e.g., `v1.0.0`) for Production.

## 🛡️ License
Distributed under the MIT License. See `LICENSE` for more information.