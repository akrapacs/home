# Path
export PATH=~/bin:$PATH

# Prompt
export PS1="[\w]$ "

# ls colors
export CLICOLOR=1
export LSCOLORS=BxDxFxFxGxFxFxBxBxGxGx

# Aliases
alias la='ls -la'
alias ll='ls -la'
alias killpyc='find . -name *.pyc -exec rm -fr {} \;'
alias killds='find . -name .DS_Store -exec rm -fr {} \;'
alias gopath='export GOPATH=`pwd`'
