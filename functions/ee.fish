function ee --description "open file in currently open vim window"
  mvim --servername VIM --remote $argv;
end
