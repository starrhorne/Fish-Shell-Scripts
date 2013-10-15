function __git_branch_list
  git for-each-ref | grep refs/heads | sed -e 's/^.*refs\/heads\///g'
end
