function save-function --description "Save an in-memory function to disk"
	for f in $argv
    echo "$f [saved]"
    functions $f >  ~/.config/fish/functions/$f.fish
  end
end
