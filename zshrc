export BRAZIL_WORKSPACE_DEFAULT_LAYOUT=short

export AUTO_TITLE_SCREENS="NO"

# if you wish to use IMDS set AWS_EC2_METADATA_DISABLED=false
export AWS_EC2_METADATA_DISABLED=true


# tmuxcopy version
alias tmuxcopy='tmux load-buffer - && tmux set-buffer -w "$(tmux show-buffer)"'

#export PROMPT="
#%{$fg[white]%}(%D %*) <%?> [%~] $program %{$fg[default]%}
#%{$fg[cyan]%}%m %#%{$fg[default]%} "


#set-title() {
#    echo -e "\e]0;$*\007"
#}

ssh() {
    set-title $*;
    /usr/bin/ssh -2 $*;
    set-title $HOST;
}


#brazil-build() {
#  command brazil-build "$@" |& sed -E '
#    s/^(\x1b\[[0-9;]*m)*\[[^]]*]\s*//;
#    /test_root=/ { s/.*/\x1b[0m/ }
#  '
#}

#brazil-build() {
#  command brazil-build "$@" |& sed -E '/test_root=/ { s/.*/\x1b[0m/ }'
#}


alias e=emacs
alias bb=brazil-build

alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allPackages'
alias bbb='brc --allPackages brazil-build'
alias bbra='bbr apollo-pkg'

# Basel's Paths
export PATH=$HOME/.toolbox/bin:$PATH
export PATH=/apollo/env/envImprovement/bin:$PATH
export PATH=/apollo/env/AmazonAwsCli/bin:$PATH
export PATH=/local/home/basabbas/fzf/bin:$PATH
export PATH=$PATH:/home/basabbas/go/bin
export PATH="$HOME/.local/bin:$PATH"
export PATH=~/.cargo/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export GITHUB_CLI=/opt/github-cli
export PATH=${GITHUB_CLI}/bin:${PATH}

export MVN_HOME=/opt/maven
export PATH=${MVN_HOME}/bin:${PATH}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# HISTORY
HISTSIZE=10000      # Number of commands to keep in memory
SAVEHIST=10000      # Number of commands to save to the history file
HISTFILE=~/.zsh_history  # Location of the history file
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY


export PATH=$HOME/.toolbox/bin:$PATH

eval "$(starship init zsh)"

# fzf with Ctrl+R
source /local/home/basabbas/fzf/shell/key-bindings.zsh 2>/dev/null
source /local/home/basabbas/fzf/shell/completion.zsh 2>/dev/null

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Enable tab completion
autoload -Uz compinit
compinit


# Zoxide
eval "$(zoxide init zsh)"
