FROM debian:buster

RUN \
	apt update && \
	apt -y upgrade && \
	\
	apt install -y \
	mariadb-server \
	dumb-init \
	vim

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/init.sh /home/

RUN chmod +x /home/init.sh

ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

CMD [ "/home/init.sh" ]

# service mysql start

# mysql

# bind-address 값을 주석처리해서 127.0.0.1 localhost에서만 가능했던 접속을 모든 주소에서 접근 가능하게 변경
# CREATE DATABSE wordpress_db; 데이터 베베이이스  생성
# CREATE USER 'dhyun'@'%' IDENTIFIED BY '1234'; 유저네임 dhyun 사용자 패스워드 1234로 %로 어디서든 접속가능한 유저 생성
# GRANT ALL ON wordpress_db.* TO 'dhyun'@'%'; dhyun 계정에 wordpress_db에 대한 모든 권한을 승인
# FLUSH PRIVILEGES; 권한 변경사항 적용
#
# 172.20.0.2
