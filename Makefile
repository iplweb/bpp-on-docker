
clean:
	find . -name \*~ -print0 | xargs -0 rm -v

check-server-working-stable:
	cd stable/stack && if [ "`curl 127.0.0.1:8080|grep 'W systemie nie ma'|wc -l|sed -e 's/ //g'`" != "1" ]; then ( docker-compose logs --tail="all"; curl 127.0.0.1:8080; exit 1); fi

build-stable-container:
	cd stable/containers && make build

run-stable-container: build-stable-container
	cd stable/stack && docker-compose up -d
	echo "Waiting 2 minutes for migrations to complete..."
	sleep 120

stop-stable:
	cd stable/stack && docker-compose stop

build-stable: run-stable-container check-server-working-stable stop-stable

build-unstable-container:
	cd unstable && make build

check-server-working-unstable:
	cd unstable/stack && if [ "`curl 127.0.0.1:8080|grep 'W systemie nie ma'|wc -l|sed -e 's/ //g'`" != "1" ]; then ( docker-compose logs --tail="all"; curl 127.0.0.1:8080; exit 1); fi

run-unstable-container: build-unstable-container
	cd unstable/stack && docker-compose up -d
	echo "Waiting 2 minutes for migrations to complete..."
	sleep 120

stop-unstable:
	cd unstable/stack && docker-compose stop

build-unstable: run-unstable-container check-server-working-unstable stop-unstable

run-stable: run-stable-container

docker-clean-this-will-remove-database:
	cd stable/stack && docker-compose stop && docker-compose rm -f && docker volume prune -f
