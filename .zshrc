export ZSH="/home/micalm/.oh-my-zsh"
ZSH_THEME="bureau"
plugins=(sudo systemd debian git docker docker-compose wakeonlan zbell)
zbell_use_notify_send=true
zbell_ignore=(vim ssh tail)

source $ZSH/oh-my-zsh.sh

alias art="php artisan"
alias art71="php7.1 artisan"
alias art72="php7.2 artisan"
alias art73="php7.3 artisan"
alias art74="php7.4 artisan"
alias art80="php8.0 artisan"
alias art81="php8.1 artisan"
alias co="composer"
alias co71="php7.1 /usr/local/bin/composer"
alias co72="php7.2 /usr/local/bin/composer"
alias co73="php7.3 /usr/local/bin/composer"
alias co74="php7.4 /usr/local/bin/composer"
alias co80="php8.0 /usr/local/bin/composer"
alias co81="php8.1 /usr/local/bin/composer"
alias sail='[ -f sail ] && zsh sail || zsh ./vendor/bin/sail'

alias flush-dns="sudo systemd-resolve --flush-caches"

mp4towebm() {
    ffmpeg -i $1 $1.webm
}

# Set up console env
export EDITOR=vim
export PATH="$HOME/.local/bin:$HOME/.config/composer/vendor/bin:$HOME/.symfony/bin:$PATH"
