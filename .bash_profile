# ENVIRONMENT VARIABLES

# ALIASES

alias os='neofetch'
alias c='clear'
alias rld='source ~/.bashrc'
alias e='exit'
alias l='ls -al'
alias dev='cd ~/code; pwd; ls -a'
alias gs='git status'
alias gpuom='git push -u origin master'
alias python='python3'

# FUNCTIONS

function repodup() {
    printf -- '--Run rsync:------------------------------------------------\n'
    rsync -av --progress $1 $2 --exclude '.git' --exclude 'node_modules' --exclude 'package-lock.json'
    cd $2
    printf -- '\n--Run git init:--------------------------------------------\n'
    git init
    printf -- '\n--Run npm install:-----------------------------------------\n'
    npm install
    printf -- '--Run ls -al:----------------------------------------------\n'
    ls -al
}
