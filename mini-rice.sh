#!/bin/sh

set -e  # Exit on error

# Detect package manager and install zsh, git, curl
if command -v apk > /dev/null; then
  apk add --no-cache zsh git curl
elif command -v apt > /dev/null; then
  apt update && apt install -y zsh git curl
elif command -v dnf > /dev/null; then
  dnf install -y zsh git curl
fi

# Set Zsh as default shell (won't persist in some Docker/Alpine environments)
if command -v chsh > /dev/null; then
  chsh -s "$(command -v zsh)" 2>/dev/null || true
fi

# Install Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
if [ ! -d "$ZSH" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Install Powerlevel10k theme
if [ ! -d "${ZSH}/custom/themes/powerlevel10k" ]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH}/custom/themes/powerlevel10k"
fi

# Install useful plugins
PLUGINDIR="${ZSH}/custom/plugins"
[ ! -d "${PLUGINDIR}/zsh-autosuggestions" ] && \
  git clone https://github.com/zsh-users/zsh-autosuggestions "${PLUGINDIR}/zsh-autosuggestions"
[ ! -d "${PLUGINDIR}/zsh-syntax-highlighting" ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "${PLUGINDIR}/zsh-syntax-highlighting"

# Download config files
curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB_USER/mini-rice/main/zshrc -o ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/YOUR_GITHUB_USER/mini-rice/main/p10k.zsh -o ~/.p10k.zsh

# Launch Zsh
exec zsh