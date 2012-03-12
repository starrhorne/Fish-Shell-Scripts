function fish_prompt --description "Write out the prompt"
  printf '%s%s %s%s%s%s%s $' (set_color cyan) (whoami) (set_color yellow) (prompt_pwd) (parse_git_branch) (set_color yellow)
  set_color normal
  printf ' '
end
