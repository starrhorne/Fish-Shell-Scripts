function open_most_recent
  open (ls -t | head -n 1)
end
