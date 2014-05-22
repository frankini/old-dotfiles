#Path
export PATH="$HOME/bin:$HOME/.rbenv/bin:$PATH"

# Rbenv
eval "$(rbenv init -)"

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

zsh-users/zsh-syntax-highlighting

EOBUNDLES

# Make it so
antigen apply
