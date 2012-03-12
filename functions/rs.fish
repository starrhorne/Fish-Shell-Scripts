function rs
   if test -f "./script/server"
    ./script/server
   else 
    rails server
   end
end
