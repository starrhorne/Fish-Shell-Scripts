for p in /opt/bin /opt/local/bin ~/.config/fish/bin /usr/bin /usr/local/bin
	if test -d $p
		set -x PATH $p $PATH
	end
end

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -x EDITOR "vim"

set fish_greeting ""
set -x CLICOLOR 1

set -x BROWSER open

cd ~

set -x JAVA_HOME "/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home"


# pull in a local, ignored-by-git config file
if test -f ~/.config/fish/config.local.fish
  . ~/.config/fish/config.local.fish
end
