function svnan
   svn status | grep "^?" | awk '{print $2}' | xargs svn add
end
