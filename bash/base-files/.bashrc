# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# PS1='[\u@\h \W]\$ '

color_prompt=yes

shopt -s histappend











[[ -z "$DBUS_SESSION_BUS_ADDRESS" ]] && export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

[[ ":$PATH:" != *":/home/kitsune/Applications:"* ]] && export PATH=/home/kitsune/Applications:$PATH

[[ ":$PATH:" != *":/home/kitsune/.config/bash/functions:"* ]] && export PATH=/home/kitsune/.config/bash/functions:$PATH

[[ ":$PATH:" != *":/usr/lib/jvm/openjdk11/bin/javac:"* ]] && export PATH=/usr/lib/jvm/openjdk11/bin/javac:$PATH

source /home/kitsune/.config/bash/conf.d/*
