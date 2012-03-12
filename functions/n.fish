function n
    if test (count $argv) = 1

      if test -d "/Users/snhorne/development/niche/sites/$argv[1]/$argv[1]"
        cd /Users/snhorne/development/niche/sites/$argv[1]/$argv[1]
      else 
        cd /Users/snhorne/development/niche/sites/$argv[1]
      end

    else
      cd ~/development/niche/sites
    end
end
