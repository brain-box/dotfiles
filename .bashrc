export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

alias setproxy='export http_proxy=http://172.16.0.2:8081;export ALL_PROXY=$http_proxy'
alias sakuralogin='ssh 133.242.162.79 -p 22022 -l numa'
alias netlogin='ssh 172.16.3.50 -l numa'

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/numa/.gvm/bin/gvm-init.sh" ]] && source "/Users/numa/.gvm/bin/gvm-init.sh"

