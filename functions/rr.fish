function rr
    if test (count $argv) = 4
      find $argv[1] -name "$argv[2]" -type f -exec sed -i "" "s|$argv[3]|$argv[4]|g" \{\} \;
    else
      echo "Usage: rr <path> <type> <search> <replace>"
    end
end
