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
plugins=(git docker docker-compose sudo zsh-autosuggestions zsh-syntax-highlighting command-time colored-man-pages command-not-found kubectl)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Configure POWERLEVEL theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs prompt_char)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status time)
POWERLEVEL9K_INSTANT_PROMPT=quiet

# Setup fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable autocompletion
autoload -U promptinit; promptinit

# setup kubectl and terraform autocompletion
source <(kubectl completion zsh)
complete -o nospace -C /usr/bin/terraform terraform

# Setup thefuck
eval $(thefuck --alias)

# User aliases
alias c="clear"
alias -g G="| grep"
alias -g A="--all-namespaces"
alias dev="cd ~/Desktop/dev"

# Kubernetes aliases
alias k8s="kubectl"
complete -F __start_kubectl k8s
alias k8s-get="k8s get pod --all-namespaces | grep 'detector\|gate'"
alias k8s-reset="k8s delete pod --all-namespaces -l pod_type=detector && echo 'Waiting 15 seconds before rollouting consumer' && sleep 15 && k8s rollout restart deploy gate-api-kafka-consumer"
k8s-push() {
  docker build -t harbor.sirin.cc/default/detector-plate:$1 ~/Desktop/dev/cars_detector && \
  docker push harbor.sirin.cc/default/detector-plate:$1
}
source ~/.terraform_envs

# Color ls
source $(dirname $(gem which colorls))/tab_complete.sh
alias ls='colorls --group-directories-first --dark'
alias l='colorls --group-directories-first --almost-all --dark'
alias ll='colorls --group-directories-first --almost-all --long --dark'

# OpenVINO
export LD_LIBRARY_PATH=/opt/intel/openvino_2021/deployment_tools/inference_engine/lib/intel64/:$LD_LIBRARY_PATH
export PATH=~/intel/openvino/python/python3.7:$PATH
source /opt/intel/openvino_2021/bin/setupvars.sh -pyver 3.7
