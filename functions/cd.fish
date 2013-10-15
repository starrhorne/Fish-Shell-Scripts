function cd --description "Change working directory"
  # Source a .rvmrc file in a directory after changing to it, if it exists.
  # To disable this fature, set rvm_project_rvmrc=0 in $HOME/.rvmrc

  # Skip history in subshells
  if status --is-command-substitution
    builtin cd $argv
    return $status
  end

  # Avoid set completions
  set -l previous $PWD

  if test $argv[1] = - ^/dev/null
    if test "$__fish_cd_direction" = next ^/dev/null
      nextd
    else
      prevd
    end
    return $status
  end

  builtin cd "$argv"
  if test "$rvm_project_rvmrc" != 0
    set -l cwd $PWD
    while true
      if contains $cwd "" $HOME "/"
        if test "$rvm_project_rvmrc_default" = 1
          rvm default 1>/dev/null 2>&1
        end
        break
      else
        if test -f "$cwd/.rvmrc"
          . "$cwd/.rvmrc"
          break
        else
          set cwd (dirname "$cwd")
        end
      end
    end

    set -e cwd
  end
end
