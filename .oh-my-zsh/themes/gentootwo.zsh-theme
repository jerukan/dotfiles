function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

# PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[cyan]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)$(prompt_char)%{$reset_color%} '
PROMPT='%B╭─%(!.%{$fg_bold[red]%}.%{$FG[039]%}%n@)%m %{$FG[050]%}%(!.%1~.%~) $(conda_prompt_info)$(virtualenv_prompt_info)$(git_prompt_info)%{$reset_color%}
╰─$(prompt_char)%{$reset_color%}%b '

ZSH_THEME_VIRTUALENV_PREFIX="%{$FG[135]%}["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}%B "

ZSH_THEME_CONDA_PREFIX="%{$FG[135]%}{"
ZSH_THEME_CONDA_SUFFIX="}%{$reset_color%}%B "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[208]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}%B "
