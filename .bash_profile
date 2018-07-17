# automatically trim long paths in the prompt
PROMPT_DIRTRIM=3 

reset='\033[0m'
black='\033[30m'
blue='\033[34m'
cyan='\033[36m'
green='\033[32m'
orange='\033[33m'
purple='\033[35m'
red='\033[31m'
violet='\033[35m'
white='\033[37m'
yellow='\033[33m'

# set the terminal title to the current working directory
PS1="\[\033]0;\w\007\]"
# new line
PS1="$PS1"'\n'
# change to green
PS1="$PS1""\[${green}\]"
# display user
PS1="$PS1"'\u '
# change to orange
PS1="$PS1""\[${orange}\]"
# display current working directory
PS1="$PS1"'\w'

if test -z "$WINELOADERNOEXEC"
then
	GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
	COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
	COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
	COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
	if test -f "$COMPLETION_PATH/git-prompt.sh"
	then
		. "$COMPLETION_PATH/git-completion.bash"
		. "$COMPLETION_PATH/git-prompt.sh"
        # change to blue
		PS1="$PS1""\[${blue}\]"
        # bash function
		PS1="$PS1"'`__git_ps1`'
	fi
fi

# reset color
PS1="$PS1""\[${reset}\]"
# new line
PS1="$PS1"'\n'
# prompt: always $
PS1="$PS1"'$ '
# for detection by MSYS2 SDK's bash.basrc
MSYS2_PS1="$PS1"

# use tab key to step through possible completions
bind "TAB:menu-complete"
