FROM debian:buster

RUN \
	apt update && \
	apt upgrade && \
	\
	apt install -y \
	php7.3 \
	php-fpm \
	php-mysql \
	dumb-init \
	mariadb-client \
	wget \
	vim &&\
	\
	wget https://wordpress.org/latest.tar.gz && \
	tar -xf latest.tar.gz && \
	mkdir /var/www/html/ && \
	mv /wordpress/* /var/www/html/ && \
	rm -r /wordpress latest.tar.gz && \
	\
	chown -R www-data:www-data /var/www/html

EXPOSE 9000

# COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
# COPY ./tools /var/www/

# RUN chmod +x /var/www/wordpress_start.sh

# ENTRYPOINT [ "/usr/bin/dumb-init", "--" ]

# CMD [ "/var/www/wordpress_start.sh" ]

# wget https://wordpress.org/latest.tar.gz && \	wordpress 압축파일 다운로드
# tar -xvf latest.tar.gz && \					압축해제
# mv /wordpress/* /var/www/html/ && \			지정한 경로로 파일 이동
# chown -R www-data:www-data /var/www/html && \ 권한 설정
# rm -r /wordpress latest.tar.gz				파일 삭제

# mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php 샘플 설정파일 이름 변경
# wp-config.php의 DB_NAME, DB_SUER, DB_PASSWORD, DB_HOST 설정

# /etc/php/7.3/fpm/pool.d/www.conf 에 들어가서 listen항목을 0.0.0.0:9000으로 변경
# sed -i 's/listen =/#bind/g' /etc/mysql/mariadb.conf.d/50-server.cnf

# service php7.3-fpm start

# 172.20.0.3

