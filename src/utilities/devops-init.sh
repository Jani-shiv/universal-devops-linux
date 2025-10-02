#!/bin/bash
# Universal DevOps Linux Initializer
set -e

echo "🚀 Universal DevOps Linux setup starting..."

# Create common directories
mkdir -p /etc/universal-devops
mkdir -p /var/lib/universal-devops

# Install basic DevOps tools if missing
for pkg in git jq curl wget htop; do
  if ! command -v $pkg &>/dev/null; then
    echo "Installing $pkg..."
    if [ -f /etc/redhat-release ]; then
      sudo dnf install -y $pkg
    elif [ -f /etc/debian_version ]; then
      sudo apt update -y && sudo apt install -y $pkg
    fi
  else
    echo "$pkg already installed ✅"
  fi
done

echo "🎉 Setup completed!"
