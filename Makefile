
clean:
	find . -name \*~ -print0 | xargs -0 rm -v

build-stable:
	cd stable/containers && make build
	cd stable/stack && docker-compose up -d
	sleep 5
	cd stable/stack && docker-compose exec appserver bpp-manage.py migrate
	cd stable/stack && docker-compose exec appserver bpp-manage.py createsuperuser --username admin --noinput --email michal.dtz@gmail.com
	cd stable/stack && docker-compose stop

build-unstable:
	cd unstable && make build

run-stable:
	cd stable/stack && docker-compose up

docker-clean:
	cd stable/stack && docker-compose stop && docker-compose rm -f && docker volume prune -f
