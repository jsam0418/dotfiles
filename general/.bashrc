# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#

#
# Uncomment these lines to allow ~/.gitconfig to set these values
#
# unset GIT_AUTHOR_NAME
# unset GIT_AUTHOR_EMAIL

alias find_t='find ~/ -type'

[ -s "/home/josiah.sam/.scm_breeze/scm_breeze.sh" ] && source "/home/josiah.sam/.scm_breeze/scm_breeze.sh"

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man!'
export MANWIDTH=999
set -o vi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias ls='exa -l --group-directories-first --icons'
alias la='exa -la --group-directories-first --icons'
alias tree='exa -T --icons'

unset PROMPT_COMMAND
PS1=''

starship_precmd() {
      # Force Starship to draw the prompt
        PS1="$(starship prompt)"
    }
PROMPT_COMMAND=starship_precmd
eval "$(starship init bash)"
eval "$(zoxide init bash --cmd cd)"

export PATH="$HOME/.local/bin:$PATH"
