#custom functions
function tabname() {
    if [ "$#" -ne 1 ]; then
        echo 'tabname needs a name';
        return -1;
    fi
    echo -ne "\033]0;$1\007";
}
function ting() {
    if [ "$#" -ne 2 ]; then
        echo 'ting needs a site and label!';
        return -1;
    fi
    echo -ne "\033]0;png-$2\007";
    ping $1;
}

function xinoff() {
    xinput set-prop $1 "Device Enabled" 0;
}

function xinon() {
    xinput set-prop $1 "Device Enabled" 1;
}

function up() {
    cd `for i in $(seq 1 ${1:-1}); do printf "%s" "../"; done`
}

#custom  aliases
    #basic
    alias lock="gnome-screensaver-command -l"
    alias shutdown="sudo shutdown -h now"
    alias restart="sudo shutdown -r now"
    alias lhtop="(echo -ne \"\033]0;$HOSTNAME-htop\007\"; htop)"
    alias alsamixer="(echo -ne \"\033]0;$HOSTNAME-alsamixer\007\"; alsamixer)"

    #tmux
    alias tnux="tmux -2 new -s"

    #system

    #programs
    alias explorer="(nautilus --no-desktop --browser &> /dev/null &)"
    alias chrome="(google-chrome &> /dev/null &)"
    alias ffox="(firefox &> /dev/null &)"
    alias rbox="(rhythmbox &> /dev/null &)"
    alias sshot="(gnome-screenshot --interactive &> /dev/null &)"
    alias kpx="(keepassx &> /dev/null &)"
    alias vbox="(virtualbox &> /dev/null &)"
    alias banshee="(banshee &> /dev/null &)"
    alias rmk="(remarkable &> /dev/null &)"
