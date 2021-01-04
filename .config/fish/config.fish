function fish_greeting
end

alias l 'ls -h'
alias ll 'ls -lh'
alias la 'ls -ah'
alias lla 'ls -lah'
alias grep 'grep --color=auto'
alias tldr 'env LANG=en_US.UTF-8 tldr'
# alias http 'http-server --port 3000' #TODO: use nginx container

# alias pS 'sudo pacman -S'
# alias pSs 'pacman -Ss'
# alias pR 'sudo pacman -Rs'
# alias pQe 'pacman -Qe'
# alias pQi 'pacman -Qi'

alias gcl 'git clone'
alias gss 'git status --short'
# alias gad 'git add'
alias ga. 'git add .; git status --short'
alias gcm 'git commit -m'
alias gps 'git push'
alias gpl 'git pull'
# alias gbr 'git branch'
# alias gco 'git checkout'
# alias gcb 'git checkout -b'
alias glg 'git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %C(cyan)(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# alias d 'docker'
# alias dc 'docker-compose'
# alias dp "docker ps --all --format 'table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}'"
# alias di 'docker image'
# alias dr 'docker run'
# alias de 'docker exec'
# alias dl 'docker logs -f'

alias clip 'kitty +kitten clipboard'
# alias icat 'kitty +kitten icat'
# alias kssh 'kitty +kitten ssh'
# alias kdiff 'kitty +kitten diff'

# Start X at login
if status is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx -- -keeptty
  end
end
