# Project: terraform_dev

This repository contains Terraform configurations for provisioning and managing AWS EC2 infrastructure using a reusable, multi-environment modular approach.

## Architecture Overview
- **Environments**: Environment-specific configurations are located in `environments/`. Each environment (e.g., `dev`, `prod`) is self-contained and manages its own state.
- **Shared Modules**: Reusable resource logic is stored in the `modules/` directory.
- **Testing**: Automated tests are implemented using Terraform's native testing framework in `modules/<module_name>/tests/`.

## Project Structure
```text
.
├── environments/
│   ├── dev/               # Development environment
│   │   ├── main.tf        # Orchestration (calls shared modules)
│   │   ├── variables.tf   # Environment-specific variables
│   │   ├── terraform.tfvars # Environment values
│   │   └── provider.tf    # AWS provider
│   └── prod/              # Production environment
├── modules/
│   └── ec2/               # Shared EC2 Instance module
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       └── tests/         # Module-specific unit tests
└── GEMINI.md
```

## Conventions & Standards

### Resource Naming
- Resources inside modules should generally be named `this` (e.g., `resource "aws_instance" "this"`).
- Use kebab-case for resource names and variable names.

### Modules
- All module variables must include a `description`.
- Modules should be tested in isolation using `.tftest.hcl` files.

### Terraform Usage
- **Format**: Always run `terraform fmt -recursive` before committing.
- **State**: Each environment in `environments/` manages its own state file.

## Deployment Workflow
1. Navigate to the desired environment: `cd environments/dev`
2. Initialize: `terraform init`
3. Plan: `terraform plan`
4. Apply: `terraform apply`

## Running Tests
To run unit tests for a specific module:
1. Navigate to the module directory: `cd modules/ec2`
2. Initialize (if not already): `terraform init`
3. Run tests: `terraform test`

## Roadmap & Improvements
- [ ] Implement S3 Backend for remote state management in each environment.
- [ ] Pin Terraform and Provider versions in environment `provider.tf` files.
- [ ] Add EBS encryption by default in the EC2 module.
- [ ] Transition from hardcoded IDs to `data` source lookups in `terraform.tfvars`.
