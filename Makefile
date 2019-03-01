build-prod:
	docker-compose build

run-prod: build-prod
	docker-compose up

build-dev:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build

run-dev: build-dev
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up
