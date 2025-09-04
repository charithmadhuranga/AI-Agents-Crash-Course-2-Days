# Project Variables
PROJECT_NAME=ai-agents
DOCKER_COMPOSE=docker-compose -p $(PROJECT_NAME)

# Default target
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make build        Build Docker images"
	@echo "  make up           Start containers (detached)"
	@echo "  make logs         Show logs"
	@echo "  make stop         Stop containers"
	@echo "  make down         Stop and remove containers"
	@echo "  make restart      Restart containers"
	@echo "  make clean        Remove containers, networks, volumes, images"

# Build services
.PHONY: build
build:
	$(DOCKER_COMPOSE) build

# Start services
.PHONY: up
up:
	$(DOCKER_COMPOSE) up -d

# Show logs
.PHONY: logs
logs:
	$(DOCKER_COMPOSE) logs -f

# Stop services
.PHONY: stop
stop:
	$(DOCKER_COMPOSE) stop

# Stop and remove services
.PHONY: down
down:
	$(DOCKER_COMPOSE) down

# Restart services
.PHONY: restart
restart: down up

# Clean everything (DANGER: removes volumes and images)
.PHONY: clean
clean:
	$(DOCKER_COMPOSE) down --volumes --rmi all
