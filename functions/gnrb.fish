function gnrb --description "New git branch, push to origin and set upstream"
	git checkout -b $argv
  git push origin $argv
  git branch --set-upstream $argv origin/$argv
end
