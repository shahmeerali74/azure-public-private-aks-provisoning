# ------------------------------
# General settings
# ------------------------------

variable "resource_group_name" { description = "The existing Resource Group name where AKS will be created" type = string default = "terraform-public-private-vm" } 

variable "location" { description = "Azure region (must match the RG/VNet location)" type = string default = "eastus" } 

# ------------------------------
# Networking settings
# ------------------------------

variable "vnet_name" { description = "The name of the existing Virtual Network" type = string default = "vnet-eastus-1" } 

variable "aks_subnet_name" { description = "Subnet name where AKS nodes will be deployed" type = string default = "aks-subnet" } 

# ------------------------------
# AKS cluster settings
# ------------------------------

variable "aks_cluster_name" { description = "The name of the private AKS cluster" type = string default = "private-aks-cluster-tf" } 

variable "dns_prefix" { description = "DNS prefix for AKS" type = string default = "myakscluster" }