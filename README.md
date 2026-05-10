# Terraform EC2 Multi-Environment Project

This repository provides a professional-grade, reusable Terraform configuration for provisioning AWS EC2 instances. It features a modular design, support for multiple environments (Dev/Prod), interactive CLI prompts, and automated unit testing.

## Key Features
- **Modular Architecture**: Uses a shared `ec2` module for consistent resource provisioning.
- **Multi-Environment Support**: Dedicated configurations for `dev` and `prod` with isolated state management.
- **Interactive Prompts**: Dynamically input instance types, storage size, and naming at runtime.
- **Subnet Selection**: Interactively choose between `public` and `private` subnets.
- **Automated Testing**: Native Terraform test suite to validate module logic.
- **Best Practices**: Includes `.gitignore` for security and version pinning preparation.

## Project Structure
```text
.
├── environments/
│   ├── dev/               # Development environment
│   └── prod/              # Production environment
├── modules/
│   └── ec2/               # Shared EC2 resource blueprint
│       └── tests/         # Automated unit tests
├── .gitignore             # Excludes state and binaries
├── GEMINI.md              # Technical standards & roadmap
└── README.md              # Project overview (this file)
```

## Getting Started

### Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) (v1.6+ recommended)
- AWS CLI configured with appropriate credentials.

### Deployment Workflow
1. **Navigate to an environment**:
   ```bash
   cd environments/dev
   ```
2. **Initialize**:
   ```bash
   terraform init
   ```
3. **Plan & Provision**:
   Run the following and follow the interactive prompts:
   ```bash
   terraform plan
   terraform apply
   ```

### Interactive Variables
The following variables will be prompted during execution:
- `instance_name`: Prefix for the EC2 instance name.
- `instance_type`: The AWS instance type (e.g., `t3.micro`).
- `ebs_size`: Root volume size in GB.
- `subnet_type`: Select `public` or `private` (IDs are mapped in `terraform.tfvars`).

## Testing
To run the automated unit tests for the EC2 module:
1. Navigate to the module directory:
   ```bash
   cd modules/ec2
   ```
2. Execute tests:
   ```bash
   terraform test
   ```

## Roadmap
- [ ] Implement S3/DynamoDB remote backend.
- [ ] Add EBS encryption by default.
- [ ] Integrate IAM instance profiles.
- [ ] Add more resource modules (VPC, RDS).
