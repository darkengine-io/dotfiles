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

# fix for TRAMP mode
if [[ "$TERM" == "dumb" ]]
then
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
fi

export PROMPT='%F{red}%M%f %F{blue}%~%f %# '

alias gs="git status"
alias gd="git diff"
alias ga="git add -p"
alias gc="git commit"

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
esac

alias htop="htop -d 10"

keychain $HOME/.ssh/id_rsa -q
source $HOME/.keychain/$(hostname)-sh

alias fff="git pull --ff-only && git fat pull"

alias emacs="emacsclient -c -a ''"
