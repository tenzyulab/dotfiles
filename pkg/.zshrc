export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1023
export SAVEHIST=65535
setopt hist_ignore_all_dups
setopt hist_verify
setopt share_history
setopt inc_append_history
setopt hist_expand

export DIRSTACKSIZE=127
setopt autopushd
setopt pushd_ignore_dups

alias -g ..2='../../'
alias -g ..3='../../../'
alias cd-='cd -'

alias ls='ls -F'
alias ll='ls -lahF'
alias cll='clear; ls -lahF'

alias v='vim'
alias vz='v ~/.zshrc'

alias cdf='cd ~/.dotfiles'

alias reload='exec zsh'

alias top='top -d 1'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias :q='exit'

setopt auto_param_slash
setopt correct
setopt nobeep

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'


function chpwd() {
    echo `pwd` > ~/.zsh_login_directory
}

cd `<~/.zsh_login_directory`


autoload -Uz vcs_info
setopt prompt_subst

function precmd() {
    vcs_info
}

zstyle ':vcs_info:git:*' formats '(%b)'

export PS1='%F{238}┌%f %F{093}%n%f%F{238} @ %f%F{093}%m%f %F{238}in%f %F{093}%~%f %F{10}$vcs_info_msg_0_%f
%F{238}└%f %F{005}▷%f '

