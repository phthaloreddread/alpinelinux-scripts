#!/bin/sh

apk add bash coreutils lsblk lscpu lsof curl exa git htop hunspell linux-pam man-db libxcb musl ncurses screen tmux tput ttf-droid wget vim

wget https://raw.githubusercontent.com/gellertb97/passgen20/main/alpine/passgen20.sh
mv ./passgen20.sh /usr/bin/
chmod a+x /usr/bin/passgen20.sh

cp /etc/passwd /etc/passwd.bak
sed -i "s/\/bin\/ash/\/bin\/bash/g" /etc/passwd
sed -i "s/\/bin\/sh/\/bin\/bash/g" /etc/passwd
