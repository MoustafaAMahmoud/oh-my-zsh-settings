# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
ZSH_DISABLE_COMPFIX="true"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#source /etc/environment
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
function sp {
  git branch > /dev/null 2>&1 || return 1
  git config user.initials
}

# Uses the zsh precmd function hook to set the tab title to the current working directory before each prompt
function precmd () {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}
#ZLE_RPROMPT_INDENT=0
#ZSH_THEME="spaceship"

ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
#POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶ "
POWERLEVEL9K_DIR_BACKGROUND='237'
POWERLEVEL9K_CUSTOM_GIT_PAIR="echo \$(sp)"
POWERLEVEL9K_CUSTOM_GIT_PAIR_BACKGROUND="clear"
POWERLEVEL9K_CUSTOM_GIT_PAIR_FOREGROUND="blue"
POWERLEVEL9K_CUSTOM_GIT_PAIR_ICON="\uf7af"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
POWERLEVEL9K_DIR_FOREGROUND='010'
POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"
POWERLEVEL9K_DIR_ETC_BACKGROUND="clear"
POWERLEVEL9K_ETC_ICON='%F{blue}\uf423'
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"
POWERLEVEL9K_GO_ICON="\uf7b7"
POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
POWERLEVEL9K_GO_VERSION_FOREGROUND='081'
POWERLEVEL9K_HOME_ICON="\ufb26"

POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator dir dir_writable_joined custom_git_pair vcs_joined virtualenv)
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008}\uf460%F{008}'
POWERLEVEL9K_LINUX_MANJARO_ICON="\uf312 "
POWERLEVEL9K_LINUX_UBUNTU_ICON="\uf31b "
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='%F{white}\u2570\uf460%f '
POWERLEVEL9K_NVM_BACKGROUND='clear'
POWERLEVEL9K_NVM_FOREGROUND='green'
POWERLEVEL9K_OS_ICON_BACKGROUND='clear'
POWERLEVEL9K_OS_ICON_FOREGROUND='cyan'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status go_version nvm os_icon battery)
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='%F{008}\uf104%F{008}'
POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="none"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
POWERLEVEL9K_STATUS_BACKGROUND="clear"
POWERLEVEL9K_CARRIAGE_RETURN_ICON="\uf071"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uE868  %d.%m}"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX='%F{white}\u256D\u2500%f'

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git zsh-autosuggestions aws zsh-completions python git virtualenv autojump fzf)

source ~/.oh-my-zsh/oh-my-zsh.sh
ZSH_AUTOSUGGEST_MANUAL_REBIND=1
COMPLETION_WAITING_DOTS=true

# ColorLS settings
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#PATH=$(ruby -e 'puts Gem.bindir'):$PATH
#source $(dirname $(gem which colorls))/tab_complete.sh
#alias lc='colorls'
#alias l='colorls --group-directories-first --almost-all'
#alias ls='colorls -1 --color=always --group-directories-first'
#alias ll='colorls --group-directories-first --almost-all --long' # detailed list view
#alias gis='colorls --gs'

#alias ss='ffmpeg -video_size 3840x2160 -framerate 60 -f x11grab -i :1 -f pulse -ac 2 -i default -c:v libx264 -crf 0 -qp 0 -preset ultrafast'


#alias python='python3'
#alias pip='pip3'
