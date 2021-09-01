Install zsh package manager

https://github.com/zsh-users/antigen/wiki/Installation

brew install antigen
source /path-to-antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git                              
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-user/zsh-completions
autojump
fzf
