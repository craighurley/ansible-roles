#{{ ansible_managed }}

# Load the shell dotfiles:
# * ~/.path can be used to extend `$PATH`.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

ulimit -n 1024

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

if [[ -f /etc/bash_completion.d/git ]]; then
    source /etc/bash_completion.d/git
fi

if [[ -f /usr/share/git-core/contrib/completion/git-prompt.sh ]]; then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

# Disable bracketed paste mode
printf "\e[?2004l"
