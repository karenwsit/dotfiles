# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="elianderson"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/elianderson/.rvm/gems/ruby-1.9.3-p286/bin:/Users/elianderson/.rvm/gems/ruby-1.9.3-p286@global/bin:/Users/elianderson/.rvm/rubies/ruby-1.9.3-p286/bin:/Users/elianderson/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

#ALIASES
# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# List all files colorized in long format, including dot files
alias ll="ls -Gla"

# List only directories
alias lsd='ls -l | grep "^d"'

# Undo a `git push`
alias undopush="git push -f origin HEAD^:master"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Start an HTTP server from a directory
alias server="open http://localhost:8080/ && python -m SimpleHTTPServer 8080"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Shortcuts
alias d="cd ~/Documents/Dropbox"
alias p="cd ~/Projects"
alias g="git"
alias gco='git co'
alias gci='git ci'
alias grb='git rb'
alias gps='git ps'
alias ga.='git add -A'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias v="/Applications/MacVim.app/Contents/MacOS/Vim"
alias mate='open -a TextMate.app'
alias sub='open -a "Sublime Text 2"'
alias mysql="/usr/local/mysql/bin/mysql"
alias ls="ls -G"
alias pad="padrino"
alias pstart="padrino start"
alias rs="rails s -p 9393"
alias shotty="shotgun config.ru"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias gpsh="git push heroku master"
alias mirb="/usr/local/bin/macirb"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias stage="gps;git push stage stage:master"
#Compile Rails Assets
alias precompile='RAILS_ENV=production bundle exec rake assets:precompile'

# Start coffee server or application.js
alias watchassets="~/sassycoffee.sh"

#watch coffee scripts
alias coffeewatch="coffee -o public/javascripts/ -cw app/assets/javascripts/"

#watch compass scripts
alias compasswatch="compass watch"

# Start redis
alias redis="redis-server /usr/local/etc/redis.conf"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do alias "$method"="lwp-request -m '$method'"; done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"

alias ru="bundle exec rackup -p3000"
