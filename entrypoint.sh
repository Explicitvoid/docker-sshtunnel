#!/bin/sh
set -e
USER=tunnel
PASS=${PASS:=$(date +%s | sha256sum | base64 | head -c 32)}
id -u $USER >/dev/null 2>&1 || adduser --disabled-password --gecos "" $USER
echo "$USER:$PASS" | chpasswd
echo -e "USER: \e[32m$USER\e[0m\nPASSWORD: \e[32m$PASS\e[0m"

if [ -n "$USESERVEO" ] && [ "$USESERVEO" == "yes" ] || [ "$USESERVEO" == "y" ] || [ "$USESERVEO" == "true" ]
then
	/usr/sbin/sshd
	/usr/bin/ssh -oStrictHostKeyChecking=no -R 0:localhost:22 serveo.net
exit
else
	/usr/sbin/sshd -D
exit
fi