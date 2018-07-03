PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Application Shortcuts
alias itunes="open /Applications/iTunes.app"

# Services
#alias pgstart="pg_ctl -D /usr/local/var/postgres -l logfile start"
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
alias dmp="ssh -v mpa@192.168.1.110"

alias getonlocal="sudo route -n add 192.168.1.0/24 192.168.0.1"
alias getofflocal="sudo route -n delete 192.168.1.0/24 192.168.0.1"
