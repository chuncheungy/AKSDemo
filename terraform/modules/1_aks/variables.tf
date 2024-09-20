# default
variable "rg_name" { type = string }
variable "location" { type = string }

# acr
variable "acr_name" { type = string }
variable "aks_name" { type = string }

#aks
variable "aks_node_rg_name" { type = string }
variable "aks_version" { type = string }
variable "aks_node_size" { type = string }