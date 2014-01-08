# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null
done

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

case $(uname) in
  'Linux')   LS_OPTIONS='--color=auto --group-directories-first' ;;
  'FreeBSD') LS_OPTIONS='-Gh -D "%F %H:%M"' ;;
  'Darwin')  LS_OPTIONS='-h' ;;
esac

case $(uname) in
  'Linux')   BREW='' ;;
  'Darwin')  BREW=$(brew --prefix) ;;
esac
# If possible, add tab completion for many more commands
if [ -f $BREW/etc/bash_completion ]; then
. $BREW/etc/bash_completion
fi
	
if [ -e /usr/local/bin/gwhich ]; then
	 alias which="(alias; declare -f) | /usr/local/bin/gwhich --tty-only --all --read-functions --read-alias --show-dot --show-tilde"
else
    alias which="/usr/bin/which -a"
fi
# https://github.com/github/hub
eval "$(hub alias -s)"