run-stable: 
	docker-compose up

build-stable:
	docker-compose build

push-stable: build-stable
	docker-compose push

pull-stable:
	docker-compose pull

build-dev:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml build

run-dev: 
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml up

push-dev: build-dev
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml push

pull-dev:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml pull

debug-dev:
	docker-compose -f docker-compose.yml -f docker-compose.dev.yml run appserver
