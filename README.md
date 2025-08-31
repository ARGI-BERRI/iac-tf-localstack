# iac-tf-localstack

This is a repo for testing _Infrastructure as Code_ (IaC) with Terraform and LocalStack (an AWS emulator).

## Prerequisites

-   docker (of course, you need this for LocalStack)
-   mise (this repo uses it for commands like `aws` and `terraform` and applying environment variables)

## Run

```bash
# Phase 1: Boot a LocalStack container
docker compose up -d

# Phase 2: Run Terraform to apply configuration to AWS
terraform init
terraform apply
aws s3 ls

# Phase 3: Run Terraform to undo the above action
terraform destroy
aws s3 ls
```

## License

Apache License 2.0
