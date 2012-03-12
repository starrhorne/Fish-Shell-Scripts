function parse_hg_branch
  # make sure mercurial is installed
  if not which -s hg
    return
  end

  # make sure the directory is a mercurial repo
  if not is-hg
    return
  end

  if test (count (hg status)) = 0
    set_color blue
  else
    set_color red
  end
  hg branch | sed -e 's/\(.*\)/ \/hg:\1/'
end
