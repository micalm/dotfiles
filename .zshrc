export ZSH="/home/micalm/.oh-my-zsh"
ZSH_THEME="bureau"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins=(sudo systemd debian git docker docker-compose wakeonlan zbell zsh-autosuggestions)
zbell_use_notify_send=true
zbell_ignore=(vim ssh tail)

source $ZSH/oh-my-zsh.sh

# PHP/Laravel shortcuts
alias art="php artisan"
alias art7="php7.4 artisan"
alias art8="php8.3 artisan"
alias co="composer"
alias co7="php7.4 /usr/local/bin/composer"
alias co8="php8.3 /usr/local/bin/composer"
alias sail='[ -f sail ] && zsh sail || zsh ./vendor/bin/sail'

# Remember if you alias a command you can always call the original with `\cat`
# https://github.com/sharkdp/bat
alias cat="batcat"
# https://github.com/ogham/exa
alias l="exa --long --all --group --time-style long-iso"
# ./local/bin/hhost
alias host="hhost"

# Misc
alias flush-dns="sudo systemd-resolve --flush-caches"

# Set up console env
export EDITOR=vim
export PATH="$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.symfony/bin:$PATH"

# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
