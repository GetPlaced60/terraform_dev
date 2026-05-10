# Project Engineering Prompts

This document records the refined prompts used to guide the refactoring and enhancement of the `terraform_dev` project.

### Phase 1: Audit & Discovery
- **Audit Project Quality**: "Perform a comprehensive audit of this Terraform repository. Identify security risks, stability issues, and violations of industry best practices."
- **Establish Standards**: "Create a `GEMINI.md` file to serve as the primary technical guide for this project, detailing the architecture, naming conventions, and development standards."

### Phase 2: Architecture & Reusability
- **Strategy for Reusability**: "Propose a strategy to refactor this project for maximum reusability. Suggest options for multi-environment support, modularization, and infrastructure isolation."
- **Refactor to Multi-Env**: "Refactor the project into a directory-based multi-environment structure (e.g., `environments/dev` and `environments/prod`) while centralizing shared logic into reusable modules."

### Phase 3: Testing & Validation
- **Implement Automated Testing**: "Design and implement an automated testing strategy for the Terraform modules using the native testing framework to ensure stability and verify logic without manual effort."
- **Validate Infrastructure Plan**: "Execute a `terraform plan` for the new environment structure to verify that the modules are correctly linked and that the deployment logic is sound."

### Phase 4: Interactive Workflows
- **Enable Interactive Prompts**: "Modify the Terraform configurations to enable interactive CLI prompts for dynamic inputs such as Instance Type, EBS Storage Size, and Instance Name during the plan and apply phases."
- **Dynamic Subnet Selection**: "Enhance the configuration to allow interactive selection between Public and Private subnets at runtime using a lookup map in the environment-specific variables."

### Phase 5: Finalization & Handover
- **Code Synchronization**: "Establish a proper `.gitignore` to exclude binaries and local state files, then commit and push the refactored codebase to the remote repository."
- **Comprehensive Documentation**: "Generate a professional `README.md` that explains the project's purpose, the new architecture, interactive deployment workflows, and testing procedures for the team."
