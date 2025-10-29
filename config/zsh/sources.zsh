eval "$(pyenv init - zsh)"

# Start starship
eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

eval $(ssh-agent -s) > /dev/null

