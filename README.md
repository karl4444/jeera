# jeera: A Mini-Rice Bootstrap Script 🌾

A lightweight shell bootstrapper for instantly setting up a familiar Zsh environment — ideal for ephemeral VMs.

---

## What It Does

- Installs:
  - Zsh
  - Oh My Zsh
  - Powerlevel10k theme
  - Useful Zsh plugins (`zsh-autosuggestions`, `zsh-syntax-highlighting`)
- Applies your custom `.zshrc` and Powerlevel10k config
- Attempts to make Zsh your default shell

---

## ✅ Installation for Fresh VMs
This assumes you already have Docker installed and running

### Debian 
#### Start the Debian VM
```bash
docker run -it debian bash
```
#### Install dependencies and run jeera
```bash
apt update
apt install -y curl git zsh
curl -fsSL https://raw.githubusercontent.com/karl4444/jeera/main/mini-rice.sh | sh
```

###Alpine
#### Start the Alpine VM

```bash
docker run -it alpine sh
```

#### Install dependencies and run jeera
```bash
apk add --no-cache curl git zsh
curl -fsSL https://raw.githubusercontent.com/karl4444/jeera/main/mini-rice.sh | sh
```
