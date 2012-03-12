function k
    if test (count $argv) = 1
      cd ~/development/niche/keywords
      ruby ./scrape_keyword_tool.rb $argv
    else
      cd ~/development/niche/keywords
    end
end
