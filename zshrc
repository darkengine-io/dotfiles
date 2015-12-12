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
esac

alias htop="htop -d 10"

keychain $HOME/.ssh/id_rsa -q
source $HOME/.keychain/$(hostname)-sh

alias fff="git pull --ff-only && git fat pull"
