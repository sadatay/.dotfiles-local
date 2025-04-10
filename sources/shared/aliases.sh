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

alias api-start-integration='forego start -f Procfile.integration -e .env -e .env.integration'
alias gpsu='git push -u origin $(current_branch)'
alias current_branch='git symbolic-ref -q HEAD | cut -c 12-'
alias tail-rescodes='tail -f ~/code/nowsta/api/log/*.log | awk '/^Completed/''
alias clean-test-db='bundle exec rake db:drop db:create db:structure:load RAILS_ENV=integration; bundle exec rake db:drop db:create db:structure:load RAILS_ENV=test'
alias web-start-dev='forego start -f Procfile.dev'
alias api-start-dev='forego start -f Procfile.dev'
alias db-clean-test='bundle exec rake db:drop db:create db:structure:load RAILS_ENV=test'
alias bump-factories='bundle update --source db-factories'
alias prod='heroku console -a nowsta-api-production'
alias api-tail='tail -f ~/code/nowsta/api/log/development.log'
alias web-tail='tail -f ~/code/nowsta/web/log/development.log'
alias pull-db='bundle exec rake db:drop db:create db:structure:load && ~/code/nowsta/api/pull_heroku.sh'
alias spinb='bundle exec spinach -b'
alias rsp='bundle exec rspec -fd'
alias spin='bundle exec spinach'
alias yeehaw='prod'
alias pspin='parallel_spinach -- --reporter progress -- features'
alias be='bundle exec'
alias dbm='be rake db:migrate'
alias dbr='be rake db:rollback'
alias nowapi='cd ~/code/nowsta/api'
alias nowweb='cd ~/code/nowsta/web'
alias prodsh='heroku run bash -a nowsta-api-production'
alias pokegres='sudo rm /usr/local/var/postgresql@9.6/postmaster.pid; brew services restart postgresql@9.6'
alias master='git stash && git remote update && git checkout master && git pull'
alias staging='heroku console -a nowsta-api-staging'
alias payprod='heroku console -a nowsta-pay-production'
alias pg='psql -d nowsta_development'
alias gru='git remote update'
alias nowpay='cd ~/code/nowsta/pay; rvm use'
alias payprod=''
alias payprod='heroku console -a nowsta-pay-production'
alias pay-start-dev='forego start -f ~/code/nowsta/pay/Procfile.dev'
alias api-start-dev='forego start -f Procfile.dev'
alias web-start-dev='forego start -f Procfile.dev'
alias spin='bundle exec spinach'
alias rsp='bundle exec rspec -fd'
alias be='bundle exec'
alias long-running-metbase='heroku psql HEROKU_POSTGRESQL_ONYX -a nowsta-api-production'
alias acab='be rubocop -a'
alias pull-pay='time heroku pg:pull DATABASE_URL nowsta_pay_development -a nowsta-pay-production'
alias cherries-and-berries='git status | grep modified | awk "{print $2}" | xargs rubocop -A'
alias tidy='yarn lint && yarn tsc && yarn run_prettier'
alias localdown='brew services stop postgres && brew services stop redis'
alias localup='brew services start postgres && brew services start redis'
alias nowmy='cd ~/code/nowsta/my-nowsta'
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Helpers/jsc'
alias kill-hooks='rm -f .git/hooks/*'
alias purge_web_prod='heroku repo:purge_cache -a nowsta-web-production; heroku builds:cache:purge -a nowsta-web-production'
alias gonas='ssh joe@192.168.50.200'
alias tunnel='ssh -L 59000:localhost:5901 -C -N -l joe 192.168.50.200'
alias ytp='yt-dlp -f "ba"'
alias clean-test-db='bundle exec rake db:drop db:create db:schema:load RAILS_ENV=integration && bundle exec rake db:drop db:create db:schema:load RAILS_ENV=test'
alias pull-db='bundle exec rake db:drop db:create db:schema:load && ~/code/nowsta/api/pull_heroku.sh'
alias core='cd ~/code/nowsta/n2/n2-core-api'
