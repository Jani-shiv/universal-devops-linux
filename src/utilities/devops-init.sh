#!/bin/bash
echo "🚀 Universal DevOps Linux setup starting..."
for pkg in git jq curl wget htop; do
    if ! command -v $pkg &> /dev/null; then
        echo "Installing $pkg..."
        sudo dnf install -y $pkg
    else
        echo "$pkg already installed ✅"
    fi
done
echo "🎉 Setup completed!"
