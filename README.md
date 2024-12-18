# Terraform AOAI Testing
This repository presents a test to prevent high charges due to misconfiguration of `Azure OpenAI Service`.
A detailed Japanese article on this is below.  

[Azure OpenAI Service で設定ミスって1,000万円請求されたくない！ - ABEJA Tech Blog](https://tech-blog.abeja.asia/entry/advent-2024-day19-1)

### Set Up
Make `terraform.tfvars` and set variables.
```sh
cp -p terraform.tfvars.sample terraform.tfvars
```

Create Azure Resource Group and Azure Blob Storage (Storage Account and Container).
```sh
az group create -n <resource-group-name> -l <location>
az storage account create -n <storage-account-name> -g <resource-group-name> -l <location>
az storage container create -n <storage-container-name> --account-name <storage-account-name>
```

Initialize terraform with backend config for `tfstate`.
```sh
terraform init --backend-config="resource_group_name=<resource-group-name>" \
               --backend-config="storage_account_name=<storage-account-name>" \
               --backend-config="container_name=<storage-container-name>" \
               --backend-config="key=terraform.tfstate"
```

### Dry Running
```sh
terraform plan
```

### Applying
```sh
terraform apply
```

### Code Formatting
```sh
terraform fmt --recursive
```

### Testing
```sh
terraform test
```