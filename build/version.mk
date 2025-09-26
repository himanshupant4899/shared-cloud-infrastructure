versions: # Display the version of installed tools
	$(DOCKER_COMPOSE_RUN) sh -c '\
		echo "Terraform: \"$$(terraform version | head -n1)"\"; \
		echo "Docker: \"$$(docker --version)\""; \
		echo "Make: \"$$(make --version | head -n1)"\"'
.PHONY: versions