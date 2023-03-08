SRC_DIR		= ./srcs
SRC			= docker-compose.yml

DOCKER_CMD	= docker compose -f
CMD			= up -d

CLEAN_SH	= ./srcs/requirements/tools/clean.sh

all:
	$(DOCKER_CMD) $(SRC_DIR)/$(SRC) $(CMD)

clean:
	@bash $(CLEAN_SH)

.PHONY: all clean
