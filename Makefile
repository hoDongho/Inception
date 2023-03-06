
SRCS = srcs/docker-compose.yml

all:

clean:

fclean:
	make clean

re:
	make fclean
	make all

.PHONY: all clean fclean re
