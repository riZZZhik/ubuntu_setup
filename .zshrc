# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/rizhik/.oh-my-zsh"

# Set ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Set date format
HIST_STAMPS="dd.mm.yyyy"

# Load plugins
plugins=(git docker sudo zsh-autosuggestions zsh-syntax-highlighting command-time colored-man-pages command-not-found)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Configure POWERLEVEL theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs prompt_char)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status time)
POWERLEVEL9K_INSTANT_PROMPT=quiet

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User aliases
alias c="clear"
alias dev="cd ~/Desktop/dev"
alias python="python3.7"
alias pip="python3.7 -m pip"

# Color ls
source $(dirname $(gem which colorls))/tab_complete.sh
alias ls='colorls --group-directories-first --dark'
alias l='colorls --group-directories-first --almost-all --dark'
alias ll='colorls --group-directories-first --almost-all --long --dark'

# Do something useful, i think
autoload -U promptinit; promptinit

# OpenVINO
export PATH=~/intel/openvino/python/python3.7:$PATH
source /opt/intel/openvino_2021/bin/setupvars.sh -pyver 3.7
