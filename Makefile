SRC_DIR		= ./srcs
SRC			= docker-compose.yml

DOCKER_CMD	= docker compose -f
CMD			= up -d

all:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) $(CMD)

clean:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) down --rmi all
	docker volume rm $(docker volume ls -q);

.PHONY: all clean
