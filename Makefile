
clean:
	find . -name \*~ -print0 | xargs -0 rm -v

build-stable:
	cd stable/containers && make build
	cd stable/stack && docker-compose up -d
	sleep 120
	docker-compose exec appserver bpp-manage.py createsuperuser --username admin --noinput --email michal.dtz@gmail.com
	docker-compose stop

build-unstable:
	cd unstable && make build

run-stable:
	cd stable/stack && docker-compose up
