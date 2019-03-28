function bootstrap_homebrew() {
  user_shell=${SHELL}
  brew_bash=/usr/local/bin/bash
  etc_shells=/private/etc/shells

  # Ensure Homebrew is installed
  [[ -z /usr/local/bin/brew ]] && /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  # Install our most basic dependencies
  brew install bash bash-completion git
  # Tell the OS that Homebrew's bash is a legal user shell
  grep ${brew_bash} ${etc_shells} > /dev/null 2>&1 || sudo bash -c "echo ${brew_bash} >> ${etc_shells}"
  # Set the current user's shell to be the Homebrew version of bash
  if [[ ${user_shell} != ${brew_bash} ]]; then
    chsh -s ${brew_bash}
    echo "You need to restart launchd or something now for brew's bash to be your login shell - probably easiest to just relog."
  fi
}