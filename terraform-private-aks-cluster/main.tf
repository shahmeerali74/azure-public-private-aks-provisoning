#------------------------------
# Data sources for existing infra
#------------------------------

data "azurerm_resource_group" "rg" { name = var.resource_group_name }

data "azurerm_virtual_network" "vnet" { name = var.vnet_name resource_group_name = data.azurerm_resource_group.rg.name } 

#------------------------------
# Create a new subnet for AKS nodes
#------------------------------

resource "azurerm_subnet" "aks_subnet" { name = var.aks_subnet_name resource_group_name = data.azurerm_resource_group.rg.name virtual_network_name = data.azurerm_virtual_network.vnet.name address_prefixes = ["172.17.1.0/24"] # adjust if needed; must not overlap with VM subnet } 

#------------------------------
# Private AKS Cluster
#------------------------------

resource "azurerm_kubernetes_cluster" "private_aks" { name = var.aks_cluster_name location = data.azurerm_resource_group.rg.location resource_group_name = data.azurerm_resource_group.rg.name dns_prefix = var.dns_prefix 

kubernetes_version = "1.32.6" # adjust to supported version private_cluster_enabled = true # <---- this makes it private 

default_node_pool { name = "default" node_count = 1 vm_size = "Standard_B2ms" vnet_subnet_id = azurerm_subnet.aks_subnet.id } 

identity { type = "SystemAssigned" }

#------------------------------
# Networking configuration
#------------------------------

network_profile { network_plugin = "azure" # use Azure CNI service_cidr = "10.2.0.0/16" # must NOT overlap with VNet dns_service_ip = "10.2.0.10" # inside service_cidr } }