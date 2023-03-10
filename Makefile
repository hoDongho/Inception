SRC_DIR		= ./srcs
SRC			= docker-compose.yml

DOCKER_CMD	= docker compose -f
CMD			= up -d

CLEAN_SH	= ./srcs/requirements/tools/clean.sh

all:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) $(CMD)

build:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) up -d --build

clean:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) down

fclean:
	make clean
	@bash $(CLEAN_SH)

re:
	make fclean
	make all

.PHONY: all up build clean fclean re
