#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Lists all processes matching a grep of the input
## example: lproc node
lproc ()
{
	ps aux | grep $1
}

# Lists all processes ids matching a grep of the input
## example: lsproc node
lsproc ()
{
	ps aux | grep $1 | awk '{print $2}'
}

# Kills all processes matching a grep of the input
## example: kproc node
kproc ()
{
	kill $(ps aux | grep $1 | awk '{print $2}')
}

alias vs='open -a Visual\ Studio\ Code ./'
alias ll='ls -al'
alias ide='open -a WebStorm ./'
eval "$(fasd --init auto)"
alias gplr='git pull --rebase'
alias awsl='aws --endpoint-url=http://localhost:4566'

# Export for  yarn
export PATH="$PATH:`yarn global bin`"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

export PATH="$PATH:/path/to/elixir/bin"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=${PATH}:/usr/local/mysql/bin/

export PATH="$HOME/.deno/bin:$PATH"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true

fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
