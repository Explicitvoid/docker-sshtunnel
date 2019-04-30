FROM alpine
COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint.sh entrypoint.sh
RUN set -ex && \ 
	apk add --no-cache --virtual openssh-server && \
	/usr/bin/ssh-keygen -A && chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]