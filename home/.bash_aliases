alias ls="ls --color=auto"
alias ll="ls -lhX"
alias la="ls -AlhLX"
alias cd="cd -P"
alias cp="cp -r"
alias mv="mv -i"
alias rm="rm -ir"
alias mkdir="mkdir -p"
alias grep="grep --color=auto"
alias pSyu="sudo pacman -Syu"   # system upgrade
alias pSyyu="sudo pacman -Syyu" # when updating mirrors
alias pD="sudo pacman -D"       # set `--asdeps` or `--asexplicit`
alias pSs="pacman -Ss"          # search remote for package
alias pS="sudo pacman -S"       # sync download
alias pQs="pacman -Qs"          # query list
alias pQmq="pacman -Qmq"        # list foreign packages
alias pQdt="pacman -Qdt"        # list orphans
alias pSi="pacman -Si"          # remote package details
alias pQi="pacman -Qi"          # local package details
alias pRs="sudo pacman -Rs"     # remove package
alias pRnsc="sudo pacman -Rnsc" # remove package recursively
alias rsync="rsync --progress"
alias z="zathura"
alias vi="vim"
alias tlmgr="tllocalmgr"        # TeX package man
alias sv-format="verible-verilog-format --inplace --port_declarations_alignment align --"
alias sv-lint="verible-verilog-lint --"
