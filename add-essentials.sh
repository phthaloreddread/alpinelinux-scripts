#!/bin/ash

apk add coreutils lsblk lscpu lsof curl exa git hunspell man-db screen tmux ttf-droid wget vim

wget https://raw.githubusercontent.com/gellertb97/passgen20/main/alpine/passgen20.sh
mv ./passgen20.sh /usr/bin/
chmod a+x /usr/bin/passgen20.sh
