if [[ $-  =~ i ]]; then

export HISTIGNORE="&:exit"

export EDITOR="vim"

alias ls="ls -G"
alias ll="ls -al"
alias la="ls -A"
alias l="ls -CF"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias sum1f="awk '{t += \$1} END {print t}'"

function source_directory() {
    if [[ -d $1 && -r $1 && -x $1 ]]; then
        pushd "$1" > /dev/null
        for file in $(LC_ALL=C command ls *.sh); do
            [[ -f $file && -r $file ]] && . "$file"
        done
        popd > /dev/null
    fi
}

source_directory "$HOME/.profile.d"
unset source_directory

function mcd() {
    mkdir -p $1 && cd $1
}

fi
