# ----------------------------------------------------------------------------
#           FILE: .zshenv
#    DESCRIPTION: zsh non-interactive shell configuration file
#         AUTHOR: Zoltán Király <zoliky@gmail.com>
# ----------------------------------------------------------------------------

# Fuzzy finder
export FZF_DEFAULT_OPTS='
    --color fg:-1,bg:-1,hl:238,fg+:-1,bg+:-1,hl+:166
    --color info:248,prompt:243,spinner:242,pointer:242,marker:166'

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# User-specific binaries
export PATH=$HOME/.local/bin:$PATH

# Golang
export PATH=$PATH:/usr/local/go/bin

# TeX Live
export PATH=$PATH:$HOME/.local/texlive/bin/x86_64-linux