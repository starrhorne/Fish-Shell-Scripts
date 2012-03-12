## standard options

complete -c mate -s a -l async              -A -d "Do not wait for file to be closed by TextMate."
complete -c mate -s w -l wait               -A -d "Wait for file to be closed by TextMate."
complete -c mate -s l -l line            -r -A -d "Place caret on line <number> after loading file."
complete -c mate -s r -l recent             -A -d "Add file to Open Recent menu."
complete -c mate -s d -l change-dir         -A -d "Change TextMates working directory to that of the file."
complete -c mate -s n -l no-reactivation    -A -d "After edit with -w, do not re-activate the calling app."
complete -c mate -s h -l help               -A -d "Show this information."
complete -c mate -s v -l version            -A -d "Print version information."

## custom completion of project files

complete -c mate -d 'Project' -A -a '(test -d ~/.tmproj; and find ~/.tmproj -name "*.tmproj" -d 1 | xargs -n 1 basename -s ".tmproj")'
