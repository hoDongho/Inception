SRC_DIR		= ./srcs
SRC			= docker-compose.yml
DOCKER_CMD	= docker compose -f
CLEAN_SH	= ./srcs/requirements/tools/clean.sh

all: up

up:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) up -d

clean:
	bash $(CLEAN_SH)

fclean:
	make clean

re:
	make fclean
	make all

.PHONY: all clean fclean re
