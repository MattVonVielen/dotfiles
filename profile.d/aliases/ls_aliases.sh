if ls --version >/dev/null 2>&1; then
    alias ls="ls --color=auto"
else
    alias ls="ls -G"
fi
alias ll="ls -al"
alias la="ls -A"
alias l="ls -CF"
