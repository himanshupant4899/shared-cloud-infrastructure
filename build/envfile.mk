# use .env.example by default if not declared
ENVFILE ?= .env.example


dotenv: # create/overwrite the .env file
	$(DOCKER_COMPOSE_GENERIC) -c 'cp env_files/$(ENVFILE) env_files/.env'
.PHONY: dotenv