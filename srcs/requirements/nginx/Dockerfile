FROM debian:buster

RUN \
	apt update && \
	apt upgrade -y && \
	apt install -y \
	nginx \
	openssl \
	dumb-init \
	vim

EXPOSE 443

# COPY ./conf/default /etc/nginx/sites-enabled/default
# COPY ./tools/nginx_start.sh /var/www

# RUN chmod +x /var/www/nginx_start.sh

# ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

# CMD [ "var/www/nginx_start.sh" ]
