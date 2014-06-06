if [ -d $(brew --prefix erlang)/lib/erlang/man ]; then
    MANPATH="$(brew --prefix erlang)/lib/erlang/man":$MANPATH
fi
