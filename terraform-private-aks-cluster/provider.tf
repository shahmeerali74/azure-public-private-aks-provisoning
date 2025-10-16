terraform{
  required_providers{
  azurerm = {
    source = "hashicorp/azurerm"
    version = "4.37.0"
   }
  }
}

provider "azurerm"{
  features {}
  subscription_id = #<“cmd to find id is: az account show">  
}