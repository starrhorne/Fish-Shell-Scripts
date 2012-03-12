function sc -d "Run the Rails console"
  # adding this conditional seems to break readline, so compensate with rlwrap
  # but why is this necessary?
  if test -x script/rails
    rlwrap script/rails console $argv
  else
    rlwrap script/console $argv
  end
end
