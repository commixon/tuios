alias cl='clear'
alias v='nvim'
alias dots='cd ~/.config'

alias fvim='fzf --print0 | xargs -0 -o -r nvim'

# confirm before overwriting something
alias cp="cp -i -v"
alias mv='mv -i -v'
alias rm='rm -i -v'

# cd Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# eza Aliases
alias ls='eza --all --icons=always --color=always --group-directories-first'
alias lt='eza --all --tree --color-scale --level=2 --icons=always --color=always --group-directories-first'
alias ll='eza -al --no-time --no-user --no-permissions --no-filesize --icons=always --color=always --group-directories-first'
alias la='eza -alh --git --icons=always --color=always --group-directories-first'
alias tree='eza --tree --all --group-directories-first'

# Git Aliases
alias gs='git status'
alias ga='git add'
alias ga.='git add --all'
alias gc='git commit'
alias gca="git commit -a"
alias gl='git log --oneline'
alias gb='git checkout -b'
alias gd='git diff'
alias gp='git push'
alias gP='git pull'
alias main='git checkout main'
alias pull='git pull'
