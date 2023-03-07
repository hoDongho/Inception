FROM debian:buster

RUN \
	apt update &&\
	apt -y upgrade &&\
	apt install -y mariadb-server &&\
	apt install -y dumb-init &&\
	sed -i 's/bind/# bind/g' /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

