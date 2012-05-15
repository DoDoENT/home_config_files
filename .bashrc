
# Check for an interactive session
[ -z "$PS1" ] && return

export EDITOR="vim"
export Locutus="192.168.1.34"
export Stormtrooper="stormtrooper"
export STFilmovi="dodo@$Stormtrooper:~/Downloads/filmovi"
export STHome="dodo@$Stormtrooper:~/"

alias photopay='cd /home/dodo/private/Documents/Moje_Gluposti/PhotoPay/PhotoPay/core-photopay/'
alias buildCTags='ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -o ~/.vim/tags/cpp.tags /usr/include/c++'
alias vi='vim'
alias kaj='man'
alias sshCopy='rsync -av --progress --rsh=ssh'
alias sendAURPkgs='rsync -av --progress --rsh=ssh /home/dodo/AURPkg/* dodo@$Stormtrooper:~/AURPkg'
alias sendCacheToStormtrooper='rsync -av --progress --rsh=ssh /var/cache/pacman/pkg/* dodo@$Stormtrooper:/var/cache/pacman/pkg'
alias sharePacCache='sudo /home/dodo/private/Documents/Linux/sharedCache/getStormtrooperPkgCache.sh'
alias restartNM='sudo /etc/rc.d/networkmanager restart'
alias syncAll='/home/dodo/private/Documents/Linux/sync/syncAll.sh'
alias syncImportant='/home/dodo/private/Documents/Linux/sync/syncImportant.sh'
alias ls='ls --color=always'
alias ll='ls --color=always -lh'
alias la='ls --color=always -a'
alias lal='ls --color=always -lah'
alias sudo='sudo '
alias compress='tar -cpav'
alias extract='tar -xvf'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
complete -cf sudo
source ~/.git-completition.sh
if [ -f "/usr/lib/stderred.so" ]; then
    export LD_PRELOAD="/usr/lib/stderred.so"
fi

