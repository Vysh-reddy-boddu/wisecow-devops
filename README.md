# Wisecow Application – DevOps Deployment

## Project Overview

This project demonstrates containerization and deployment of the **Wisecow application** using Docker and Kubernetes.
A CI/CD pipeline is implemented using GitHub Actions to automatically build and push Docker images whenever code changes are pushed to the repository.

---

# Cow Wisdom Web Server

The Wisecow application is a simple web server that prints random wisdom using `fortune` and displays it using `cowsay`.

## Prerequisites

```bash
sudo apt install fortune-mod cowsay -y
```

## How to Run Locally

```bash
./wisecow.sh
```

Then open:

```
http://localhost:4499
```

## Example Output

![wisecow](https://github.com/nyrahul/wisecow/assets/9133227/8d6bfde3-4a5a-480e-8d55-3fef60300d98)

---

# DevOps Implementation

This project was extended with DevOps practices including containerization, Kubernetes deployment, and CI/CD automation.

---

# 1. Dockerization

A **Dockerfile** was created to containerize the Wisecow application.

### Build Docker Image

```bash
docker build -t wisecow-app .
```

### Run Container

```bash
docker run -p 4499:4499 wisecow-app
```

Access the application:

```
http://localhost:4499
```

---

# 2. Push Docker Image to DockerHub

The Docker image is pushed to DockerHub so it can be pulled by Kubernetes.

### Tag Image

```bash
docker tag wisecow-app <dockerhub-username>/wisecow-app:v1
```

### Push Image

```bash
docker push <dockerhub-username>/wisecow-app:v1
```

---

# 3. Kubernetes Deployment

The application is deployed into a Kubernetes cluster using manifest files.

### Deployment File

`deployment.yaml`

Creates a deployment with multiple replicas of the Wisecow container.

### Service File

`service.yaml`

Exposes the application using a **NodePort service**.

### Deploy Application

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### Verify Pods

```bash
kubectl get pods
```

### Verify Service

```bash
kubectl get svc
```

---

# 4. CI/CD Pipeline using GitHub Actions

A CI/CD pipeline is implemented using GitHub Actions.

Workflow file location:

```
.github/workflows/docker-build.yml
```

### Pipeline Steps

1. Trigger workflow on push to `main` branch
2. Checkout repository code
3. Build Docker image
4. Authenticate with DockerHub
5. Push Docker image to DockerHub

This ensures every code change automatically builds and publishes a new container image.

---

# Project Structure

```
wisecow-devops
│
├── Dockerfile
├── wisecow.sh
├── deployment.yaml
├── service.yaml
├── README.md
└── .github
    └── workflows
        └── docker-build.yml
```

---

# Outcome

✔ Wisecow application containerized using Docker
✔ Docker image pushed to DockerHub
✔ Kubernetes deployment created
✔ Application exposed using Kubernetes Service
✔ CI/CD pipeline implemented using GitHub Actions

---

# Challenge Goal (Optional)

TLS-based secure communication can be implemented using Kubernetes Ingress with TLS certificates.

---
~

