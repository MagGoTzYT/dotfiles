if status is-interactive
    starship init fish | source
    zoxide init fish | source
    alias ls='eza --icons --group-directories-first'
    alias ll='eza -l --icons --group-directories-first'
    alias cat='bat --paging=never'
end
