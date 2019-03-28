# Set our bash prompt according to the branch/status of the current git 
# repository.
#
# Refactored from http://gist.github.com/31934

function git_info {
  # Only display git info if we're inside a git repository.
  git branch > /dev/null 2>&1 || return 1

  # Capture the output of the "git status" command.
  git_status="$(git status 2> /dev/null)"

  git_prompt_text=' '
  # Get the name of the branch.
  branch_pattern="On branch ([^${IFS}]*)"
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    git_prompt_text+="(${BASH_REMATCH[1]})"
  else
    git_prompt_text+="{Detached HEAD}"
  fi

  # Set arrow icon based on status against remote.
  if [[ ${git_status} =~ "Your branch is ahead" ]]; then
    git_prompt_text+="↑"
  elif [[ ${git_status} =~ "Your branch is behind" ]]; then
    git_prompt_text+="↓"
  elif [[ ${git_status} =~ "Your branch and "(.*)" have diverged" ]]; then
    git_prompt_text+="↔"
  fi

  # Indicate whether stashes exist
  git_stash="$(git stash list 2> /dev/null)"
  if [[ -n ${git_stash} ]]; then
    git_prompt_text+="$(colorize ${MAGENTA} '*')"
  fi

  # Set color based on clean/staged/dirty.
  clean_status_pattern="working (directory|tree) clean"
  if [[ ${git_status} =~ ${clean_status_pattern=} ]]; then
    colorize ${GREEN} "${git_prompt_text}"
  elif [[ ${git_status} =~ "Changes to be committed" ]]; then
    colorize ${YELLOW} "${git_prompt_text}"
  else
    colorize ${RED} "${git_prompt_text}"
  fi
}

function prompt_symbol () {
  # Set color of dollar prompt based on return value of previous command.
  if test $1 -eq 0
  then
    echo "\$"
  else
    colorize ${RED} '$'
  fi
}

function prompt_func () {
  last_return_value=$?

  # Interactive terminal prompt string:
  host=$(colorize ${CYAN} '\h') # hostname
  dir=$(colorize ${YELLOW} '\W') # short working dir
  sym="$(prompt_symbol $last_return_value)"
  PS1="${host}:${dir}$(git_info)${sym} "

  # XTerm window title:
  echo -n -e "\033]0;$USER@$HOSTNAME:$PWD\007\n"
}

PROMPT_COMMAND=prompt_func

