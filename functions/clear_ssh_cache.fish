function clear_ssh_cache --description "Clears cached ssh keys"
  ssh-add -D
end
