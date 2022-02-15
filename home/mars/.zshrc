# ~/.zshrc

# Options
zstyle :compinstall filename '/home/mars/.zshrc'
setopt AUTO_CD
unsetopt beep

# History
HISTFILE=~/.histfile; HISTSIZE=1000; SAVEHIST=1000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Command completion
autoload -Uz compinit; compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

# Keybinds
bindkey -e # emacs mode
bindkey '^[[P' delete-char # delete key

# Aliases
alias cat='bat --color=auto --decorations=auto --wrap=never' # use bat over cat
alias grep='grep --color=auto' # terminal colours
alias ls='exa --color=auto --icons --group-directories-first -aF' # use exa over ls
alias ll='ls -lh' # list vertically
alias rm='rm -i' # interractive
alias mv='mv -i' # interractive
alias cp='cp -i' # interractive
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=/'
alias orphans='pacman -Qtdq | sudo pacman -Rns -'

# Prompts
PROMPT='%B%F{red}%n%f in %F{blue}%~%f > %b'
RPROMPT='%B[%D{%L:%M:%S %p}]%b'; TMOUT=1; TRAPALRM() zle reset-prompt

# Plugins
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
