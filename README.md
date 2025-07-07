# Project Overview
This is to automate the deployment of a flask application to AKS.

# Folder Structure
```
.
├── README.md                   # This file
├── app_src/                    # Application source code
│   ├── Dockerfile              # Docker configuration for the app
│   ├── main.py                 # Main application code
│   └── requirements.txt        # Python dependencies
└── terraform/                  # Infrastructure as code using Terraform
    ├── README.md               # Instructions for Terraform usage
    ├── config.yaml             # Configuration file for deployment
    ├── main.tf                 # Main Terraform configuration
    ├── modules/                # Reusable Terraform modules
    │   ├── 1_aks/              # AKS (Azure Kubernetes Service) module
    │   ├── 2_build/            # Build-related Terraform module
    │   └── 3_deploy/           # Deployment-related Terraform module
    ├── providers.tf            # Cloud provider configuration
```
# Application (app_src/)
This folder contains the source code for the application.
- main.py: Main application logic
- requirement.txt: Contains the dependencies for Python application

# Infrastructure (terraform/)
This folder contains the infrastructure code, primarily focused on provisioning Azure resources such as AKS and ACR and automate the deployment of the above application via kuberentes provider.
- config.yaml: Configuration settings for the deployment
- main.tf: Main file of terraform
- modules/: This contains resusable modules for AKS and application deployments.

# Step to Deploy
```
# Update default.tenant_id and default.subscription_id under terraform/config.yaml and other configurations if needed
az login --tenant <TENANT_ID>
az account set --subscription <SUBSCRIPTION_ID>

# Terraform init
cd terraform
terraform init

# Terraform plan
terraform plan

# Terraform apply
terraform apply
```
