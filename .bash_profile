source ~/.bashrc

# bash-completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

for i in apache2/bin lib/mysql5/bin lib/postgresql82/bin; do
  export PATH=/opt/local/$i:$PATH
done

PATH=$PATH:/usr/local/bin

#if [ -d /opt/local/apache2/bin ]; then
#  export PATH=/opt/local/apache2/bin:$PATH
#fi

#if [ -d /opt/local/lib/mysql5/bin ]; then
#  export PATH=/opt/local/lib/mysql5/bin:$PATH
#fi

# if [-d /opt/local/lib/pPATH="/bin:/sbin:/usr/bin:/usr/sbin:/opt/local/lib/postgresql82/bin"    

if [ -d /opt/local/man ]; then
  export MANPATH=/opt/local/man:$MANPATH
fi

export PATH=/opt/local/bin:/opt/local/sbin:/Users/aizat/bin:/Applications/android-sdk-mac_x86/tools:/opt/local/lib/postgresql83/bin:$PATH
alias pign=ping
alias mvimdiff='mvim -d'
alias 'll'='ls -lAgh'
alias 'phpsh'='/opt/local/phpsh/phpsh'
alias 'rspec'='spec -O spec/spec.opts'
export SVN_EDITOR='mate -w'

# rails related
alias 'runner'='./script/runner'
alias 'sca'='./script/autospec'
alias 'scc'='./script/console --debugger'
alias 'scr'='./script/runner'
alias 'scs'='./script/server --debugger'

function bookmark {
  case "$1" in
    fingerbird)  pushd /Users/aizat/src/klue/fingerbird ;;
    frug)        pushd /Users/aizat/src/klue/frug ;;  
    gems)        pushd /opt/local/lib/ruby/gems/1.8/gems ;;
    ges)         pushd /Users/aizat/src/jaringandata/ges ;;  
    haze)        pushd /Users/aizat/src/haze.net.my ;;
    qubestat)    pushd /Users/aizat/src/qubeconnect/qubestat/git ;;
    qubebill)    pushd /Users/aizat/src/qubeconnect/qubebill/git ;;
    youthsays)   pushd /Users/aizat/src/youthsays/youthsays/git ;;
    tib)         pushd /Users/aizat/src/urekalabs/thisisbinding ;;
    saltmedia)   pushd /Users/aizat/src/urekalabs/saltmedia ;;
    roo.my)      pushd /Users/aizat/src/urekalabs/roo.my ;;
    ideashare)   pushd /Users/aizat/src/urekalabs/ideashare.my ;;
    peteteo)     pushd /Users/aizat/src/urekalabs/peteteo ;;
    *)           echo "forgot something?" ;;  
  esac
}

function spec {
  local dir=. head
  until [ "$dir" -ef / ]; do
      if [ -f "$dir/script/spec" ]; then
          $dir/script/spec -O "$dir/spec/spec.opts" $@
          return
      fi
      dir="../$dir"
  done
}

# For git goodness
# Copied from http://aaroncrane.co.uk/2009/03/git_branch_prompt/
function find_git_branch {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head == ref:\ refs/heads/* ]]; then
                git_branch=" ${head##*/}"
            elif [[ $head != '' ]]; then
                git_branch=' (detached)'
            else
                git_branch=' (unknown)'
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

green=$'\e[1;32m'
magenta=$'\e[1;35m'
normal_colours=$'\e[m'

PS1="${PS1:0:$((${#PS1} - 3))}\[$green\]\$git_branch\[$normal_colours\]\$ "

##
# Your previous /Users/aizat/.bash_profile file was backed up as /Users/aizat/.bash_profile.macports-saved_2009-09-14_at_14:56:56
##

# MacPorts Installer addition on 2009-09-14_at_14:56:56: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# android related
# export PATH=/Application/android-sdk-mac_x86/tools
