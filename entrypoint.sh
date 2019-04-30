#!/bin/sh
set -e
USER=tunnel
FOO=${VARIABLE:=default}
PASS=$(date +%s | sha256sum | base64 | head -c 32)
adduser --disabled-password --gecos "" $USER
echo "$USER:$PASS" | chpasswd
echo -e "USER: \e[32m$USER\e[0m\nPASSWORD: \e[32m$PASS\e[0m"
/usr/sbin/sshd
/usr/bin/ssh -oStrictHostKeyChecking=no -R 0:localhost:22 serveo.net
