# Cloud CI/CD Project

A hands-on **Cloud/DevOps learning and trial project** built to understand how a modern CI/CD workflow works from source code to cloud deployment.

> **Learning note:** This project was created as a study/trial project with the help of AI guidance. I am still learning Cloud and DevOps, so the purpose of this project is to understand the tools, workflow, configuration, and deployment process rather than present it as a production system built independently.

## 🚀 Project Overview

This project demonstrates a basic end-to-end CI/CD pipeline for a Python Flask application.

The pipeline takes application code from GitHub, tests it, scans it for security issues, builds a Docker image, pushes the image to Amazon ECR, and deploys it to Amazon EKS.

Monitoring and logging were also explored using Prometheus, Grafana, Loki, and Promtail.

## 🔄 CI/CD Flow

Developer
    ↓
GitHub
    ↓
GitHub Actions
    ↓
Pytest
    ↓
Trivy Security Scan
    ↓
Docker Build
    ↓
Amazon ECR
    ↓
Amazon EKS
    ↓
Load Balancer
    ↓
Flask Application

## 🛠️ Technologies Used

- Python
- Flask
- Pytest
- Git
- GitHub
- GitHub Actions
- Docker
- Trivy
- Amazon ECR
- Amazon EKS
- Kubernetes
- Terraform
- Prometheus
- Grafana
- Loki
- Promtail
- AWS IAM

## 📦 Application

The application is a simple Flask web application running on port `5000`.

It returns:

Cloud CI/CD Pipeline is working!

The application itself is intentionally simple because the main goal of this project was learning the **Cloud/DevOps deployment workflow**.

## ⚙️ CI/CD Pipeline

GitHub Actions performs the following steps:

1. Checkout the source code
2. Set up Python
3. Install dependencies
4. Run automated tests
5. Run Trivy security scanning
6. Build the Docker image
7. Authenticate with AWS using GitHub OIDC
8. Login to Amazon ECR
9. Push the Docker image to ECR
10. Update the EKS deployment
11. Wait for the Kubernetes rollout to complete

## ☁️ AWS Infrastructure

The project uses:

- Amazon ECR for container images
- Amazon EKS for Kubernetes deployment
- IAM roles for AWS permissions
- GitHub OIDC for GitHub Actions authentication
- AWS Load Balancer for external application access

Terraform was used to represent the ECR repository, EKS cluster, and EKS node group as Infrastructure as Code.

## 📊 Monitoring

Prometheus and Grafana were explored to understand Kubernetes monitoring and visualization.

Grafana dashboards were used to view Kubernetes resource metrics such as:

- Nodes
- Pods
- CPU usage
- Memory usage
- Kubernetes resources

## 📝 Logging

Loki and Promtail were used to explore centralized Kubernetes log collection.

Grafana Explore was used to query and view the collected logs.

> Note: The monitoring and logging setup in this learning project was tested on a local Docker Desktop Kubernetes cluster, while the application deployment was running on Amazon EKS.

## 🎯 What I Learned

Through this project, I practiced:

- Basic Git and GitHub workflow
- CI/CD concepts
- Automated testing
- Containerization with Docker
- Security scanning with Trivy
- Container image management with Amazon ECR
- Kubernetes deployments
- Amazon EKS
- IAM permissions and roles
- GitHub Actions with AWS OIDC
- Infrastructure as Code with Terraform
- Kubernetes monitoring
- Centralized logging concepts

## 📚 Project Purpose

This is **not intended to be a production-ready application**.

It is a personal learning project created while studying Cloud and DevOps concepts.

The project helped me understand how different tools connect together to create a complete deployment workflow.

## 👨‍💻 About

I am currently learning **Cloud Computing and DevOps** and building hands-on projects to understand how cloud infrastructure, containers, Kubernetes, CI/CD, monitoring, and automation work together.

This project represents one of my learning steps toward becoming a **Cloud/DevOps Engineer**.

## github
https://github.com/rizzshaal

## linkedin
www.linkedin.com/in/rizzshaal