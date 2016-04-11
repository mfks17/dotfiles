# rbenv
eval "$(rbenv init -)"

export PATH=/Applications/CMake.app/Contents/bin:$PATH
export PATH=$HOME/bin:$PATH

# zsh-completion
fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u

# golang
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH"

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^r' peco-src
