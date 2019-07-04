#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias exorcise='rm'
alias ls='ls --color=auto'
alias vi='vim'
alias l='ls -lah'
alias pacman='sudo pacman'
alias klx='sh /home/must4rd/.bin/klx.sh'
alias opsi='sh /home/must4rd/.bin/opsi.sh'
alias ksar='java -jar /home/must4rd/Stuff/ksar/kSar.jar'
alias monitor='sh ~/.bin/monitor.sh >/dev/null 2>&1'
alias arbeit='/home/must4rd/.bin/arbeit.sh'
alias paux='ps aux | grep -i'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias calc='galculator'
alias grp='grep -i'
alias grep='grep --color=auto'
alias nitrogen='nitrogen /home/must4rd/Pictures'
alias mount='sudo mount'
alias umount='sudo umount'

PS1='[\u@\h \W]\$ '
# My default editor is nano. I don't even able to find exit button in vim :D
export EDITOR='vim'

# Make ~/.bar folder executable
export PATH="${PATH}:$HOME/.bar"

# Make ~/.bin folder executable
export PATH="${PATH}:$HOME/.bin"
export PATH="${PATH}:$HOME/.bin/clicks"
export PATH="${PATH}:$HOME/.gem"
export PATH="${PATH}:/home/must4rd/.gem/ruby/2.6.0/bin"


# Make ~/.toys folder executable
export PATH="${PATH}:$HOME/.toys"

# Make Go apps executable
export GOPATH="$HOME/.go"
export GOBIN="$HOME/.go/bin"
export PS1="\[\033[38;5;3m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;4m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\] \\$ \[$(tput sgr0)\]"
RANGER_LOAD_DEFAULT_RC=FALSE




export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export _JAVA_AWT_WM_NONREPARENTING=1
