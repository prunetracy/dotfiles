#Change Prompt
export PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]\\n$ "

#Aliases
alias c='clear'
alias g='git'
alias gs='git status'
alias h='cd ~'
alias v='cd ~/vagrant'
alias ce='cd /pub/central/current'
alias vc='cd ~/vagrant/code/central'
alias be='bundle exec'

alias nre='npm run example'

alias ll='ls -FGlAhp'		#preferred ls implementation

alias cd~='cd ~/'		#go home
alias cd..='cd ../'		#go back 1 dir level
alias ..='cd ../'		#go back 1 dir level
alias ...='cd ../..'		#go back 2 dir levels
alias .3='cd ../../../'		#go back 3 dir levels
alias .4='cd ../../../../'	#go back 4 dir levels
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

alias myip='curl ip.appspot.com'	#public facing ip

alias vgo='cd ~/vagrant/; vagrant up; vagrant ssh;'
alias vstop='cd ~/vagrant/; vagrant halt;'
alias vupdate='cd ~/vagrant; script/updateproject'
alias rebootapp='touch /pub/central/current/tmp/restart.txt'

alias ebrc='vim ~/.bashrc'
alias sbrc='source ~/.bashrc'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

ssh-add -L &> /dev/null
if [ $? -eq 1 ]; then
ssh-add
fi


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
