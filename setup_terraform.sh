#!/bin/bash

echo "🚀 Starting Professional Terraform Environment Setup..."

# 1. Install tfenv and remove conflicting terraform
echo "Cleaning up old binaries and installing tfenv..."
brew uninstall terraform --force
brew install tfenv

# 2. Configure Global Git Ignore
echo "Setting up global security layer..."
touch ~/.gitignore_global
cat <<EOF > ~/.gitignore_global
.terraform/
*.tfstate
*.tfstate.*
crash.log
*.tfvars
*.tfvars.json
override.tf
EOF
git config --global core.excludesfile ~/.gitignore_global

# 3. Add Alias to .zshrc
echo "Adding professional aliases to .zshrc..."
if ! grep -q "alias tfv" ~/.zshrc; then
    echo "alias tfv='terraform --version | head -n 1'" >> ~/.zshrc
fi

# 4. Install a stable default version
echo "Installing Terraform v1.6.0 via tfenv..."
tfenv install 1.6.0
tfenv use 1.6.0

echo "✅ Setup Complete! Run 'source ~/.zshrc' to activate changes."
