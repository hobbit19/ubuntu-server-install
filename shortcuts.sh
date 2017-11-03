#!/bin/bash

cat <<EOT > /home/user/.bash_aliases
alias ls='ls -la'
alias df='df -h'
alias htop='htop -u `whoami`'

# GIT shortcuts
alias pull='git pull'
alias push='git push'
alias status='git status'
alias s='git status'
alias branch='git branch'
alias checkout='git checkout'
alias console='php bin/console'
alias aconsole='php app/console'
alias stash='git stash'
alias remote='git remote'
alias commit='git commit -m'
alias commita='git commit -am'
alias diff='git diff'

alias disk='du -Psmx * 2>/dev/null | sort -nr'

alias post='composer run-script post-install-cmd'

if [ -d "/data/www" ]; then
        cd /data/www
fi

perms(){
    sudo chown -R user ./
    sudo chgrp -R www-data ./
    sudo chmod -R 775 ./
}

cache()
{
    if [ -d "var/cache" ]; then
        sudo chown -R user var/cache/*
        sudo rm -rf var/cache/*
    fi

    if [ -d "app/cache" ]; then
        sudo chown -R user app/cache/*
        sudo rm -rf app/cache/*
    fi

    if [ -d "var/sessions" ]; then
        sudo chown -R www-data var/sessions
    fi
}

network(){
    sudo service networking restart
}

EOT

source /home/user/.bash_aliases