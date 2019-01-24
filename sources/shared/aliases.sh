############
# ALIASES  #
############

# TODO: add safety semicolons

# General
alias rs='redis-server &'
alias weather='curl wttr.in/Austin'
alias dotfiles='~/.dotfiles/install'

# Overrides
alias readlink='greadlink'
alias top='htop'
alias cat='ccat'
alias ls='k -Ah'

# Misc
alias wakeshaggy='curl https://downwiththeclown-bot-lita.herokuapp.com/heroku/keepalive'
alias lightsout='curl -H "Content-Type: application/json" -X POST -d '"'"'{"on": false}'"'"' http://192.168.7.88/api/WJ-sacIjRxPL4hfhJKORLcd9TRZQlfELd5m9lYUg/groups/0/action'
alias lightson='curl -H "Content-Type: application/json" -X POST -d '"'"'{"on": true}'"'"' http://192.168.7.88/api/WJ-sacIjRxPL4hfhJKORLcd9TRZQlfELd5m9lYUg/groups/0/action'
alias dock-add-space='defaults write com.apple.dock persistent-apps -array-add '"'"'{tile-data={}; tile-type="spacer-tile";}'"'"''

# Development

## System
alias cpu='htop --sort-key=PERCENT_CPU'
alias mem='htop --sort-key=M_SIZE'
alias psgrep="ps -Aco pid,comm | sed 's/^ *//'| sed 's/:/ /'|grep -iE"
alias pbgist="jist -Ppo"
alias killit='kill -9 %%'
alias cpwd='pwd | pbcopy'
alias diskspace="du -S | sort -n -r |less"

## Tools
alias e='emacsclient -t --alternate-editor='

## Javascript

### Yarn
alias yarn-nuke='rm -rf ./node_modules/ && yarn cache clean'
alias yarn-top='while true; do clear; echo "$(ps -ef | grep '"'"'yarn'"'"' | grep -v grep | awk '"'"'{print $2}'"'"' | xargs lsof -p)"; sleep 2; done;'
alias yarn-rebuild='yarn-nuke && yarn install'

### Bower
alias bower-nuke='rm -rf ./bower_components/ && bower cache clean'
alias bower-rebuild='bower-nuke && bower install'

### Node-sass
alias sass='nvm use && npm rebuild node-sass'

### Yarn & Bower
alias barn='nvm use && yarn install && bower install && sass'
alias barn-hard='nvm use && yarn-rebuild && bower-rebuild && sass'


# Version Control
alias git='hub'
alias ggraph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)-                     %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias branches='git branch -vvvv'
alias bs='branches'
alias gc='git-commander'
alias master-parity='git remote update && git reset --hard origin/master'

## These should be overridden based on environment
alias rebase-upstream-master='git remote update && git rebase -i upstream/master'
alias rebase-origin-master='git remote update && git rebase -i origin/master'
alias fixup-upstream-master='git commit -m "fixup" && rebase-upstream'
alias fixup-origin-master='git commit -m "fixup" && rebase-origin'
alias track-origin-master='git branch -u origin/master'
alias track-upstream-master='git branch -u upstream/master'
alias aliases='ag --case-sensitive "^alias" ~/.dotfiles/sources/'
alias size='du -cksh'
alias exif='exiftool -all= '
alias uieh='cd /Users/josephlasala/code/folio/ui-eholdings; nvm use; yarn;'
alias modkb='cd /Users/josephlasala/code/folio/mod-kb-ebsco/; rvm use; bundle;'
alias yt='youtube-dl -x --audio-format mp3 --audio-quality 0 '
alias ss='soundscrape'
