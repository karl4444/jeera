export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Powerlevel10k prompt config
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Aliases
alias ..="cd .."
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias ll="ls -lah"