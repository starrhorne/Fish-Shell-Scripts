function p
    if test (count $argv) = 1

      if test -d "/Users/snhorne/development/projects/$argv[1]/$argv[1]"
        cd /Users/snhorne/development/projects/$argv[1]/$argv[1]
      else 
        cd /Users/snhorne/development/projects/$argv[1]
      end

    else
      cd ~/development/projects
    end
end
