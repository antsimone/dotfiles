#
# ~/.bash_profile only sourced when bash is started as a login shell
#

export PATH="$PATH:$HOME/.local/bin"

# XDG base dir
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Dots
#export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export HISTFILE="$XDG_DATA_HOME"/bash/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Xorg
if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
    XDG_SESSION_TYPE=x11 GDK_BACKEND=x11 exec startx "$XDG_CONFIG_HOME"/X11/xinitrc

fi
