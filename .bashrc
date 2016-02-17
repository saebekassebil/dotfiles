# Add `~/bin` to the PATH
export PATH="$HOME/bin:$PATH";

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Source Z
. ~/bin/z.sh

# Source config dotfiles
for file in ~/.{bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file

# Source git completion
source ~/.bash_completion/git-completion.sh

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  complete -o default -o nospace -F _git g;
fi;


