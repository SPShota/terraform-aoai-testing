# Terraform AOAI Testing

### Set Up
```sh
cp -p terraform.tfvars.sample terraform.tfvars
```

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