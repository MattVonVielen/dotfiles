if [[ $-  =~ i ]]; then
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
fi
