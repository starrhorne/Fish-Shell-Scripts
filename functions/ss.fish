function ss -d "Run the script/server"
  if test -x script/rails
    script/rails server $argv
  else
    script/server $argv
  end
end
