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

# Android
export ANDROID_HOME="$HOME/Library/Android/sdk"

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

# propne
# http://qiita.com/laiso/items/8a30e3656c980863ccfa
propen() {
    local current_branch_name=$(git symbolic-ref --short HEAD | xargs perl -MURI::Escape -e 'print uri_escape($ARGV[0]);')
    hub browse -- pull/${current_branch_name}
}
