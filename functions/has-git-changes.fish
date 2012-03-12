function has-git-changes
  not git diff --quiet; or not git diff --quiet --cached ^/dev/null
end
