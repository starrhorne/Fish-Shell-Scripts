function is-git
  env git rev-parse --git-dir ^/dev/null >/dev/null
end
