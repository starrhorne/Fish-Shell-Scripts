function pgrep
	ps aux | 	grep $argv | 	grep -v grep

end
