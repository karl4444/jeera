# jeera: A Mini-Rice Bootstrap Script 🌾

A lightweight shell bootstrapper for instantly setting up a familiar Zsh environment — ideal for ephemeral VMs.

---

## 🚀 What It Does

- Installs:
  - Zsh
  - Oh My Zsh
  - Powerlevel10k theme
  - Useful Zsh plugins (`zsh-autosuggestions`, `zsh-syntax-highlighting`)
- Applies your custom `.zshrc` and Powerlevel10k config
- Attempts to make Zsh your default shell

---

## ✅ One-Line Install

On a fresh Debian VM, run

```bash
apt update
apt install -y curl git zsh
curl -fsSL https://raw.githubusercontent.com/karl4444/jeera/main/mini-rice.sh | sh
