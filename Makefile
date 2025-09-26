WORKSPACE ?= $(CURDIR)

DOCKER_WORK_DIR=/opt/app/vscode/workspace

DOCKER_COMPOSE := docker compose -f docker-compose.yml

DOCKER_COMPOSE_GENERIC = $(DOCKER_COMPOSE) run --rm -v "$(WORKSPACE):$(DOCKER_WORK_DIR)" -w "$(DOCKER_WORK_DIR)" --entrypoint sh tooling

# Passes the .env file to the container 
DOCKER_COMPOSE_TOOLING = $(DOCKER_COMPOSE) -f docker-compose.tooling.yml run --rm -v "$(WORKSPACE):$(DOCKER_WORK_DIR)" -w "$(DOCKER_WORK_DIR)" tooling

include build/*.mk

