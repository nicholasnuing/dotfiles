PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# Terminal Colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export COLOR_NC='e[0m' # No Color
export COLOR_WHITE='e[1;37m'
export COLOR_BLACK='e[0;30m'
export COLOR_BLUE='e[0;34m'
export COLOR_LIGHT_BLUE='e[1;34m'
export COLOR_GREEN='e[0;32m'
export COLOR_LIGHT_GREEN='e[1;32m'
export COLOR_CYAN='e[0;36m'
export COLOR_LIGHT_CYAN='e[1;36m'
export COLOR_RED='e[0;31m'
export COLOR_LIGHT_RED='e[1;31m'
export COLOR_PURPLE='e[0;35m'
export COLOR_LIGHT_PURPLE='e[1;35m'
export COLOR_BROWN='e[0;33m'
export COLOR_YELLOW='e[1;33m'
export COLOR_GRAY='e[1;30m'
export COLOR_LIGHT_GRAY='e[0;37m'
alias colorslist="set | egrep 'COLOR_w*'"

# Application Shortcuts
alias itunes="open /Applications/iTunes.app"

# Services
alias pgstart="postgres -D /usr/local/var/postgres"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias zf="~/src/ZendFramework-1.11.12/bin/zf.sh"
#alias mysqlstart='sudo /opt/local/share/mysql5/mysql/mysql.server start'
#alias mysqlstop="sudo /opt/local/share/mysql5/mysql/mysql.server stop"
#alias apachestart="sudo httpd -k start"
#alias pgstart="sudo su postgres -c '/opt/local/lib/postgresql83/bin/postgres -D /opt/local/var/db/postgresql83/defaultdb'"

# SSH Related
alias nyancat="ssh -v nyan@nyan.tandemic.com -p 2222"
alias tanduser="ssh -v tanduser@tandemic.com -p 22"
#alias gitorious="ssh -v git@git.tandemic.com"
alias moled="ssh molebase1@mole.urekalabs.com"
alias mole="cd ~/Sites/mole_web/"
alias molest="ssh moleadm@mole.my -p 2346"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
