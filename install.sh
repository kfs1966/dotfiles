#!/bin/bash

echo "🔧 Dotfiles install.sh running at $(date)"

# Define the target VS Code config path
CONFIG_PATH="/home/codespace/.config/Code/User"

# Make sure the target directory exists
mkdir -p "$CONFIG_PATH"

# Copy keybindings.json if available in dotfiles repo
if [ -f "$(pwd)/.config/Code/User/keybindings.json" ]; then
  cp "$(pwd)/.config/Code/User/keybindings.json" "$CONFIG_PATH/keybindings.json"
  echo "✅ Copied keybindings.json to $CONFIG_PATH"
else
  echo "⚠️ keybindings.json not found in dotfiles repo"
fi
