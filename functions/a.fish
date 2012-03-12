function a
    if test (count $argv) = 1

      if test -d "/Users/snhorne/development/archived/$argv[1]/$argv[1]"
        cd /Users/snhorne/development/archived/$argv[1]/$argv[1]
      else 
        cd /Users/snhorne/development/archived/$argv[1]
      end

    else
      cd ~/development/archived
    end
end
