        RED="\[\e[0;31m\]"
      GREEN="\[\e[0;32m\]"
     YELLOW="\[\e[0;33m\]"
       BLUE="\[\e[0;34m\]"
    MAGENTA="\[\e[0;35m\]"
       CYAN="\[\e[0;36m\]"
       GRAY="\[\e[0;37m\]"
  LIGHT_RED="\[\e[1;31m\]"
LIGHT_GREEN="\[\e[1;32m\]"
LIGHT_YELLOW="\[\e[1;33m\]"
 LIGHT_BLUE="\[\e[1;34m\]"
LIGHT_MAGENTA="\[\e[1;35m\]"
 LIGHT_CYAN="\[\e[1;36m\]"
      WHITE="\[\e[1;37m\]"
 COLOR_NONE="\[\e[0m\]"

function colorize() {
  color=$1
  text=$2
  echo -n -e "${color}${text}${COLOR_NONE}"
}
