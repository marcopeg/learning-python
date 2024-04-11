# Makefile to control Docker Compose for the PostgreSQL with pg_vector setup

# Start the Docker Compose services in detached mode
start:
	docker-compose up -d
	docker-compose logs -f

# Stop the Docker Compose services
stop:
	docker-compose down

# Follow the logs of the services
logs:
	docker-compose logs -f

build:
	docker-compose build

restart: stop start
reset: stop build start


.PHONY: start stop logs
