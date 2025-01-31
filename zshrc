# ----------------------------------------------------------------------------
#           FILE: .zshrc
#    DESCRIPTION: zsh interactive shell configuration file
#         AUTHOR: Zoltán Király <zoliky@gmail.com>
# ----------------------------------------------------------------------------

# Path to Oh My Zsh
export ZSH=/usr/local/share/ohmyzsh

# Theme to load
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Plugins to load
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup
plugins=(fzf git)

source $ZSH/oh-my-zsh.sh
DEFAULT_USER=$USER

# Stop zsh from allowing flow control
setopt noflowcontrol

# Aliases
type dfc > /dev/null && alias df="dfc"
type htop > /dev/null && alias top="htop"

# Key bindings
bindkey \^K kill-line