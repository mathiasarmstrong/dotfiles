DEFAULT_USER=$USER

export PATH="/usr/local/sbin:$PATH"

export ZPLUG_HOME=/usr/local/opt/zplug
export PYENV_ROOT="$HOME/.pyenv"

# eval $(docker-machine env) &

source $ZPLUG_HOME/init.zsh
# We want bash specific ones overwritten
source ~/.exports
source ~/.functions
source ~/.aliases

ulimit -n 21504
# ulimit -u 2000
ulimit -c 2000
ulimit -s 10000

# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install

export PIPENV_VENV_IN_PROJECT=1

zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "b4b4r07/enhancd", use:init.sh
zplug "rupa/z", use:z.sh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-machine", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
# https://github.com/zsh-users/zsh-autosuggestions requires brew
zplug "zsh-users/zsh-autosuggestions"
# https://github.com/zsh-users/zsh-completions requires brew
zplug "zsh-users/zsh-completions"
zplug "lukechilds/zsh-better-npm-completion", defer:2

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# zplug "plugins/rvm", from:oh-my-zsh, lazy:1
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=false
zplug "lukechilds/zsh-nvm"

zplug "mathiasarmstrong/eba57f06bb33c3a8b4319a341c6fb309", from:gist
zplug "plugins/pyenv", from:oh-my-zsh
zplug "paulmelnikow/zsh-startup-timer"

if [ $commands[kubectl] ]; then
	zplug "plugins/kubectl", from:oh-my-zsh
fi

zplug "plugins/pip", from:oh-my-zsh
[ -z "${PIPENV_ACTIVE}" ] && {
    zplug "plugins/virtualenvwrapper", from:oh-my-zsh
}
zplug "tysonwolker/iterm-tab-colors"

zplug "zlsun/solarized-man"
zplug "bric3/nice-exit-code"
zplug "arzzen/calc.plugin.zsh"

zplug "lukechilds/zsh-better-npm-completion"
zstyle ':completion:*' menu select=2

# httpstat --help
zplug "b4b4r07/httpstat", \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'

zplug "HaleTom/89ffe32783f89f403bba96bd7bcd1263", \
		from:gist, \
		as:command, \
		use:'(*).sh', \
    rename-to:'colortest'

zplug "iam4x/zsh-iterm-touchbar"

# THEME Configuration
# source ~/.powerline9k_cfg
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "themes/robbyrussell", from:oh-my-zsh

# Auto install stuff
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Then, source plugins and add commands to $PATH
zplug load

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  # source $(pyenv root)/completions/pyenv.zsh
  pyenv rehash
fi

# Show splash screen
# neofetch
