function gb --description 'List git branches verbosely'
  git branch -a --color -v $argv | grep -v "changes/"
end
