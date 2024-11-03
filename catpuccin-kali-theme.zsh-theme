# URL for ICONS : https://www.nerdfonts.com/cheat-sheet [just copy the icons]


# for color codes : for code in {000..255}; do print -P -- "$code: %F{$code}Color%f"; done
# example: %{$FG[050]%}

IC_ALPINE=" "
IC_UBUNTU=" "
IC_OSX=" "
IC_KALI=" "
IC_GIT=""
IC_FOLDER=" "
IC_RIGHT=""
NEWLINE=$'\n'


OS_NAME=$(uname -a | awk '{print $1}')

case "$OS_NAME" in
        "Darwin")
        IC_OS=$IC_OSX
;;
        "Linux")
        IC_OS=$IC_UBUNTU
;;
esac


PROMPT="${NEWLINE} %{$FG[050]%}$IC_OS %{$FG[033]%}%n@%m %{$FG[225]%}%F{reset}%(6~.%-1~/$IC_FOLDER/%1~.%5~)"
PROMPT+=' $(git_prompt_info)%{$FG[050]%}$IC_RIGHT '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[176]%}$IC_GIT "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
