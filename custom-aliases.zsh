alias ghg='ghq get'
alias o='open .'
alias gho="open `git remote -v | awk '/fetch/{print $2}' | sed -Ee 's#(git@|git://)#http://#' -e 's@com:@com/@'`| head -n1"
alias vi='mvim -v'
alias gi='gvim'
alias sl='swiftlint'
