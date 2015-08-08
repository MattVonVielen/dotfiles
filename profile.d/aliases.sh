source_directory aliases

alias sum1f="awk '{t += \$1} END {print t}'"

function mcd() {
    mkdir -p $1 && cd $1
}
