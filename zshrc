# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
precmd () {print -Pn "\e]0;%n@%m: %~\a"}
zstyle :compinstall filename '/home/simon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

settitle() {
    print -Pn "\033k$1\033\\"
}

export PROMPT='%F{red}%m%f %F{blue}%~%f %# '
function precmd() {
    settitle "%~ "
}

# fix for TRAMP mode
if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    PS1='$ '
fi

if type gem > /dev/null; then
    GEM_HOME=$(ls -t -U | ruby -e 'puts Gem.user_dir')
    GEM_PATH=$GEM_HOME
    export PATH=$PATH:$GEM_HOME/bin
fi

alias gs="git status"
alias gd="git diff"
alias ga="git add -p"
alias gc="git commit"
alias gcxdf="git clean -xdf"

alias rainymood="mpv --no-ytdl http://rainymood.com/audio1110/0.m4a --no-video --loop=inf"

case $( uname -s ) in
Linux)
alias ls="ls -l --color"
;;
FreeBSD)
alias ls="ls -lG"

alias pm="sudo portmaster -d --delete-build-only"
alias pmr="sudo portmaster -de"
alias pmu="sudo portmaster -ad --delete-build-only"

alias free="freecolor -mo"
pms() {
	make -C /usr/ports search name="$@"
}
;;
OpenBSD)
	alias ls="colorls -lG"
	export PATH=$PATH:/usr/games
esac

alias htop="htop -d 10"

keychain $HOME/.ssh/id_rsa -q
source $HOME/.keychain/$(hostname)-sh

alias ff="git pull --ff-only"
alias fff="git pull --ff-only && git fat pull"

VIMBINARY="$(which vim)"
pickvim () {
	if which nvim > /dev/null; then
		nvim "$@"
	else
		"$VIMBINARY" "$@"
	fi
}
alias vim=pickvim
