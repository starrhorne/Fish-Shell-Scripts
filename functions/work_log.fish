function work_log --description "Show work done on current git repo today"
  if test (count $argv) = 1
    git log --since="$argv[1] hours ago" --pretty="#%h - %s" | pbcopy
    git log --since="$argv[1] hours ago" --pretty="#%h - %s"
  else
    git log --since="12 hours ago" --pretty="#%h - %s" | pbcopy
    git log --since="12 hours ago" --pretty="#%h - %s"
  end
end
