# Path
export PATH="$HOME/.bin:$PATH"

# Editor
export EDITOR='vim'

# Timer
# Print elapsed time when more than 10 seconds
REPORTTIME=10

# Source aliases
source ~/.alias

#History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Load functions and completion
autoload -U compinit
compinit

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
zsh-users/zsh-completions

EOBUNDLES

# Make it so
antigen apply
