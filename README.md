**🚀 Creating and Configuring Kubernetes (AKS) Clusters in Azure**

This repository demonstrates how to create both Public and Private Azure Kubernetes Service (AKS) clusters using the Azure Portal (UI) and Terraform.

**🧠 Overview**

This project covers two deployment approaches:

Public AKS Cluster – created using the Azure Portal UI.

Private AKS Cluster – created using Terraform scripts.

It includes all configuration files, CLI commands, and steps to verify cluster connectivity.


**🧰 Prerequisites**

Before you begin, ensure the following resources are ready:

A valid Azure Subscription

An existing Resource Group

A running Linux Virtual Machine

Installed tools:

Azure CLI

kubectl

Terraform

**🌐 Public AKS Cluster (Azure Portal)**

Steps:

Search for Kubernetes Services in Azure Portal.

Click Create → Kubernetes Cluster.

Choose Subscription and Resource Group.

Select Dev/Test preset and give your cluster a name.

Configure node pool (use default settings).

Click Review + Create → Create.

**Verification**

az login

az aks get-credentials --resource-group <rg-name> --name <cluster-name>

kubectl get nodes


**🔒 Private AKS Cluster (Terraform)**

Folder structure

private-aks-cluster-tf/
│
├── providers.tf
├── variables.tf
└── main.tf


**Initialize and Deploy**

terraform init
terraform plan -out tfplan
terraform apply tfplan

**🧩 Terraform Configuration Overview**

providers.tf — Defines Azure provider and subscription.

variables.tf — Stores environment and network variables.

main.tf — Creates a private AKS cluster using the defined variables.


**🏗 Architecture Diagram**

Below is a high-level system architecture showing both the Public and Private AKS clusters, created via the Azure Portal and Terraform respectively.

<img width="1069" height="601" alt="diagram-export-16-10-2025-13_28_10" src="https://github.com/user-attachments/assets/e89e08d3-71ef-4c76-9181-701fae3d2774" />

**🧾 Output Verification**

To confirm successful deployment:

kubectl get nodes
kubectl get pods --all-namespaces

**🧑‍💻 Author**

Syed Shahmeer
Cloud Engineer | DevOps | Kubernetes Enthusiast
**📫 Connect on LinkedIn**
https://www.linkedin.com/in/syed-shahmeer-1984aa221/

**📘 Reference Links**

Azure AKS Documentation
Terraform Azure Provider
