function pm
    if test (count $argv) = 1

      if test -d "/Users/snhorne/development/projects/$argv[1]/support/mockups"
        cd /Users/snhorne/development/projects/$argv[1]/support/mockups
      else 
        cd /Users/snhorne/development/projects/$argv[1]/support
      end

    else
      cd /Users/snhorne/development/projects/$argv[1]
    end
end
