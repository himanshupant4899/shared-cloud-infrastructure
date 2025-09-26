dockerComposeDown:
	docker-compose down --remove-orphans --rmi 'local'
.PHONY: _dockerComposeDown

clean: _dockerComposeDown
.PHONY: clean