# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="xterm-256color"
alias p="python"
alias ga="git add ."
alias gp="git push -u origin master"
alias mp="mvn package"
alias python="python3"


# Path to your oh-my-zsh installation.
export ZSH=/Users/lucacorbucci/.oh-my-zsh

source $ZSH/oh-my-zsh.sh

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Add the custom freeCodeCamp prompt segment
# Load Nerd Fonts with Powerlevel9k theme for Zsh
POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme
ZSH_THEME="~/powerlevel9k/powerlevel9k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)


POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_BATTERY_VERBOSE=false
#POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false


POWERLEVEL9K_RPROMPT_PREFIX='%{'$'\e[3A''%}' 
POWERLEVEL9K_RPROMPT_SUFFIX='%{'$'\e[3B''%}' 

POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX=$'\u2502'
PROMPT_BLANK="${POWERLEVEL9K_MULTILINE_NEWLINE_PROMPT_PREFIX}\n"

POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="❱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="${PROMPT_BLANK}%F{014}\u2570%F{014} \xF0\x9F\x91\x89%f "
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
 POWERLEVEL9K_VCS_CLEAN_BACKGROUND='083'  

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon battery dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='green'
POWERLEVEL9K_DIR_ETC_BACKGROUND='green'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='green'

POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='240'

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M}"
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_RAM_BACKGROUND='yellow'
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true



neofetch

POWERLEVEL9K_PROMPT_ADD_NEWLINE_COUNT=1

# Set iTerm2 tab title text
function title_text {
    echo -ne "\033]0;"$*"\007"
}
title_text Luca

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export PATH=$PATH:/Users/lucacorbucci/.npm-global/bin



PATH="/Users/lucacorbucci/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/lucacorbucci/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/lucacorbucci/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/lucacorbucci/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/lucacorbucci/perl5"; export PERL_MM_OPT;


export PATH="$PATH:/Users/lucacorbucci/Documents/Flutter/flutter/bin"
export PATH="$PATH:/Users/lucacorbucci/Downloads/aria2-1.35.0/bin"

if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color auto --icons -a -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi

export ANDROID_HOME=/Users/{YourUsername}/Library/Android/sdk/
alias run-emulator="$ANDROID_HOME/emulator/emulator @Pixel_XL_API_29"

export PATH=/usr/local/bin/dot:$PATH

alias spotify="brew services restart spotifyd; spt"
