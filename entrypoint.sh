#!/bin/sh
set -e
USER=tunnel
PASS=${PASS:=$(date +%s | sha256sum | base64 | head -c 32)}
adduser --disabled-password --gecos "" $USER
echo "$USER:$PASS" | chpasswd
echo -e "USER: \e[32m$USER\e[0m\nPASSWORD: \e[32m$PASS\e[0m"
/usr/sbin/sshd -D
