🚀 Creating and Configuring Kubernetes (AKS) Clusters in Azure
This repository demonstrates how to create both Public and Private Azure Kubernetes Service (AKS) clusters using the Azure Portal (UI) and Terraform.

🧠 Overview
This project covers two deployment approaches:

Public AKS Cluster – created using the Azure Portal UI.
Private AKS Cluster – created using Terraform scripts.

It includes all configuration files, CLI commands, and steps to verify cluster connectivity.


🧰 Prerequisites
Before you begin, ensure the following resources are ready:
A valid Azure Subscription
An existing Resource Group
A running Linux Virtual Machine
Installed tools:
Azure CLI
kubectl
Terraform

🌐 Public AKS Cluster (Azure Portal)
Steps:
Search for Kubernetes Services in Azure Portal.
Click Create → Kubernetes Cluster.
Choose Subscription and Resource Group.
Select Dev/Test preset and give your cluster a name.
Configure node pool (use default settings).
Click Review + Create → Create.

Verification
az login
az aks get-credentials --resource-group <rg-name> --name <cluster-name>
kubectl get nodes
