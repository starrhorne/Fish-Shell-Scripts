function mate
  if test (count $argv) -eq 0
    /usr/bin/env mate
  else
    set -l proj ~/.tmproj/$argv[1].tmproj
    if test -e $proj
      open $proj
    else
      /usr/bin/env mate $argv
    end
  end
end
