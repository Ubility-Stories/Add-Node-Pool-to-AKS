
data "azurerm_resource_group" "main" {
  name = var.resource-group-name
}

data "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks-name
  resource_group_name = data.azurerm_resource_group.main.name
}


resource "azurerm_kubernetes_cluster_node_pool" "node-pool" {
  enable_auto_scaling   = true
  kubernetes_cluster_id = data.azurerm_kubernetes_cluster.aks.id
  max_count             = var.max-count
  min_count             = var.min-count
  mode                  = var.mode
  name                  = var.node-pool-name
  os_disk_size_gb       = var.disk-size
  os_type               = var.os-type
  vm_size               = var.vm-size
  priority              = "Regular"
}
