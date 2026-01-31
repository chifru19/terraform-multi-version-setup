# terraform-multi-version-setup
A professional environment for managing multiple Terraform versions with tfenv and global security protocols.
# Terraform Multi-Version Setup 🚀

A professional environment for managing multiple Terraform versions on macOS using `tfenv`, featuring global security protocols.

## 🛠️ Features
- **Version Switching**: Uses `tfenv` to handle multiple binaries (v1.5.7, v1.6.0, etc.).
- **Automated Setup**: Includes a `setup_terraform.sh` script for one-click environment configuration.
- **Global Security**: Pre-configured `~/.gitignore_global` to prevent accidental leaks of `.tfstate` or `.tfvars`.
- **Custom Aliases**: Added `tfv` for rapid version verification.

## 🚀 Quick Start
1. Clone this repo.
2. Run the setup script:
   ```bash
   chmod +x setup_terraform.sh
   ./setup_terraform.sh
