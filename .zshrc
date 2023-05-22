# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="arrow"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git command-time)

# Preferred editor for local and remote sessions
export EDITOR='nvim'

. ~/.config/zsh/git # git aliases

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Znit plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit ice as"program" pick"bin/git-fuzzy"
zinit light bigH/git-fuzzy

# Using vim motion on zsh
bindkey -v

export PATH=$PATH:~/.local/bin
export PATH="$PATH:/Users/anajulia/.foundry/bin"
export PATH="$PATH:/Users/anajulia/Library/Python/3.8/bin"
export PATH="$PATH:/Users/anajulia/Dev/luarocks-3.9.2/lua_modules/bin/./../../lua_modules/bin:/Users/anajulia/.luarocks/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

export XDG_CONFIG_HOME="$HOME/.config"

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

# 1password plugins
source /Users/anajulia/.config/op/plugins.sh

# tmuxifier
export PATH='/Users/anajulia/.config/tmux/plugins/tmuxifier/bin/:/Users/anajulia/.nvm/versions/node/v16.15.1/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/TeX/texbin:/usr/local/go/bin:/Users/anajulia/.nvm/versions/node/v16.15.1/bin:/Users/anajulia/.local/share/zinit/plugins/bigH---git-fuzzy/bin:/Users/anajulia/.local/share/zinit/polaris/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/anajulia/.cargo/bin:/Users/anajulia/.local/bin:/Users/anajulia/.foundry/bin:/Users/anajulia/Library/Python/3.8/bin:/Users/anajulia/Dev/luarocks-3.9.2/lua_modules/bin/./../../lua_modules/bin:/Users/anajulia/.luarocks/bin:/Users/anajulia/.local/bin:/Users/anajulia/.foundry/bin:/Users/anajulia/Library/Python/3.8/bin:/Users/anajulia/Dev/luarocks-3.9.2/lua_modules/bin/./../../lua_modules/bin:/Users/anajulia/.luarocks/bin'
export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmux/plugins/tmuxifier/layouts"
