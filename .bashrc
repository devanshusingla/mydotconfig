#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

################## dot configuration on git ####################
alias dotgit='/usr/bin/git --git-dir=$HOME/.dotconfig/ --work-tree=$HOME'

##############################################################
#               PYTHON ENVIRONMENT
##############################################################

############ pyenv #################
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#############  dir_env ###############
eval "$(direnv hook bash)"
