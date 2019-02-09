


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg_bold[green]%}"

current_dir() {
  echo -n "%{$fg[cyan]%}"
  echo -n "%2~";
  echo -n "%{$reset_color%} "
}

get_prompt() {
  local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
  echo -n "🐶 "
  echo -n ' '
  current_dir
  echo "$NEWLINE"
  echo -n "${ret_status}" 
}

PROMPT='$(get_prompt)'
RPROMPT='$(git_prompt_info)'