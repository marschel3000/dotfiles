# iTerm Integration
if [[ -e "~/.iterm2_shell_integration.zsh" ]]; then
	ITERM2_SHOULD_DECORATE_PROMPT=0
	source "${HOME}/.iterm2_shell_integration.zsh"
fi


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($HOME/.zsh/lib/*.zsh) source $config_file

# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

setopt notify         # report the status of backgrounds jobs immediately
setopt completeinword # not just at the end
setopt longlistjobs   # display PID when suspending processes as well

# Extend Autocomplete Search Path
#fpath=($HOME/.zsh/lib/completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

if [[ $(uname -s) == 'Linux' ]]; then
fi

if [[ $(uname -s) == 'Darwin' ]]; then
	export PATH="/usr/local/sbin:$PATH"
fi
