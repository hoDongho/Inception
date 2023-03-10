FROM debian:buster

RUN \
	apt update && \
	apt upgrade -y && \
	\
	apt install -y \
	nginx \
	openssl \
	dumb-init \
	vim

EXPOSE 443

COPY ./conf/default /etc/nginx/sites-available/default
COPY ./tools/init.sh /home

RUN chmod +x /home/init.sh

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

CMD [ "/home/init.sh" ]
