# core
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt INC_APPEND_HISTORY

setopt AUTO_CD
setopt AUTO_PUSHD

zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}"
zstyle ":completion:*" menu select
zstyle ":completion:*" insert-tab false
zstyle ":completion:*" special-dirs true

# color scheme
source ~/.config/zsh/base16-shell/scripts/base16-onedark.sh

# plugins
source ~/.config/zsh/antigen/antigen.zsh

antigen bundle mafredri/zsh-async

antigen bundle sindresorhus/pure

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

# key bindings
bindkey -v

bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# completions
autoload -Uz compinit bashcompinit
compinit && bashcompinit
eval "$(gopass completion bash)"

# fasd
eval "$(fasd --init auto)"

# thefuck
eval "$(thefuck --alias)"

# others
source ~/.config/zsh/alias.zsh
