#Makefile
ci: 
	# docker-compose run --rm app npm ci
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
up: 
	docker-compose up
start: 
	docker-compose up --abort-on-container-exit
test:
	docker-compose run --rm app npm test
build:
	docker compose -f docker-compose.yml build app