function winavi
    mencoder $argv[1] -o $argv[1].avi -ovc lavc -lavcopts vcodec=msmpeg4v2:vbitrate=800 -oac mp3lame
end
