
if autoload colors && colors 2>/dev/null ; then
	BLUE="%{${fg[blue]}%}"
	RED="%{${fg_bold[red]}%}"
	GREEN="%{${fg[green]}%}"
	CYAN="%{${fg[cyan]}%}"
	MAGENTA="%{${fg[magenta]}%}"
	YELLOW="%{${fg[yellow]}%}"
	WHITE="%{${fg[white]}%}"
	NO_COLOR="%{${reset_color}%}"
else
	BLUE=$'%{\e[1;34m%}'
	RED=$'%{\e[1;31m%}'
	GREEN=$'%{\e[1;32m%}'
	CYAN=$'%{\e[1;36m%}'
	WHITE=$'%{\e[1;37m%}'
	MAGENTA=$'%{\e[1;35m%}'
	YELLOW=$'%{\e[1;33m%}'
	NO_COLOR=$'%{\e[0m%}'
fi


# autoload -U add-zsh-hook
autoload -Uz vcs_info

# # enable VCS systems you use
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*:prompt:*' check-for-changes true

setopt prompt_subst
autoload -U promptinit
promptinit

# Look at http://zsh.sourceforge.net/Doc/Release/User-Contributions.html#Version-Control-Information
# for mor options
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '*'   # display this when there are unstaged changes
zstyle ':vcs_info:*' stagedstr '+'  # display this when there are staged changes

zstyle ':vcs_info:*' formats "${MAGENTA}(${NO_COLOR}%s${MAGENTA})${YELLOW}-${MAGENTA}[${GREEN}%b${MAGENTA}]${NO_COLOR} " "zsh: %r"
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat  "%b${RED}:${YELLOW}%r"
zstyle ':vcs_info:*' actionformats "${MAGENTA}(${NO_COLOR}%s${MAGENTA})${YELLOW}-${MAGENTA}[${GREEN}%b${YELLOW}|${RED}%a${MAGENTA}]${NO_COLOR} " "zsh: %r"

precmd () { vcs_info }

p0="${RED}%(?..%? )${WHITE}${debian_chroot:+($debian_chroot)}"
p1="${BLUE}%n${NO_COLOR}@%m %40<...<%B%~%b%<< "'${vcs_info_msg_0_}'"%# "
if (( EUID == 0 )); then
	PROMPT="${BLUE}${p0}${RED}${p1}"
else
	PROMPT="${RED}${p0}${BLUE}${p1}"
fi