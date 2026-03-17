# Wisecow Application – DevOps Deployment

## Project Overview

This project demonstrates containerization and deployment of the Wisecow application using Docker and Kubernetes.
A CI/CD pipeline is implemented using GitHub Actions to automatically build and push Docker images.

Additionally, system monitoring and application health check scripts are implemented.

---

# Cow Wisdom Web Server

The Wisecow application displays random wisdom using `fortune` and `cowsay`.

## Prerequisites

```bash
sudo apt install fortune-mod cowsay -y
```

## Run Locally

```bash
./wisecow.sh
```

Open in browser:

```
http://localhost:4499
```

---

# DevOps Implementation

## 1. Dockerization

Build image:

```bash
docker build -t wisecow-app .
```

Run container:

```bash
docker run -p 4499:4499 wisecow-app
```

---

## 2. Push to DockerHub

```bash
docker tag wisecow-app <dockerhub-username>/wisecow-app:v1
docker push <dockerhub-username>/wisecow-app:v1
```

---

## 3. Kubernetes Deployment

Deploy application:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Check pods:

```bash
kubectl get pods
```

Check service:

```bash
kubectl get svc
```

---

## 4. CI/CD Pipeline (GitHub Actions)

Workflow file:

```
.github/workflows/docker-build.yml
```

Pipeline:

* Trigger on push
* Build Docker image
* Push to DockerHub

---

# Problem Statement 2 (Scripting)

## 1. System Health Monitoring Script

File: `system_health.sh`

Run:

```bash
./system_health.sh
```

This script shows:

* CPU usage
* Memory usage
* Disk usage
* Top processes

---

## 2. Application Health Checker

File: `app_health_check.py`

Run:

```bash
python app_health_check.py
```

Output:

```
Application is UP and running
```

---

# Project Structure

```
wisecow-devops
│
├── Dockerfile
├── wisecow.sh
├── deployment.yaml
├── service.yaml
├── system_health.sh
├── app_health_check.py
├── README.md
└── .github/workflows/docker-build.yml
```

---

# Outcome

✔ Docker containerization completed
✔ Kubernetes deployment completed
✔ CI/CD pipeline implemented
✔ System monitoring script created
✔ Application health check implemented

---

