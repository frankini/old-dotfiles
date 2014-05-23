# Path
export PATH="$HOME/bin:$PATH"

# Editor
export EDITOR='vim'

# Timer
# Print elapsed time when more than 10 seconds
REPORTTIME=10

# Tetris
autoload -U tetris
zle -N tetris
bindkey  tetris

# Load functions and completion
fpath=(~/.zsh/functions $fpath)
autoload -U compinit
compinit
autoload -U ~/.zsh/functions/*(:t)

# Matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Antigen - plugin manager
source ~/.antigen/antigen/antigen.zsh

# Load the oh-my-zsh library
antigen use oh-my-zsh

# Bundles
antigen bundles <<EOBUNDLES

command-not-found

git
git-extras

ruby
rbenv

zsh-users/zsh-syntax-highlighting

EOBUNDLES

# Make it so
antigen apply
