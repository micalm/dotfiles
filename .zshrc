export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="bureau"

# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

plugins=(
  debian
  docker
  docker-compose
  git
  sudo
  systemd
  wakeonlan
  zbell
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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

alias tree="broot"
alias cat="batcat"
alias l="eza --long --all --group --time-style=long-iso"
# ~/.local/bin/hhost
alias host="hhost"

# Set up console env
export EDITOR=vim
export PATH="$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.symfony/bin:$PATH"

# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
