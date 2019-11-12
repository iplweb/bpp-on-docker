BPP_VERSION=201911.11

build:
	docker build -f Dockerfile . -t mpasternak79/bpp-base:$(BPP_VERSION) -t mpasternak79/bpp-base:stable

	docker build -f Dockerfile-appserver . -t mpasternak79/bpp-appserver:$(BPP_VERSION) -t mpasternak79/bpp-appserver:stable

	docker build -f Dockerfile-celery . -t mpasternak79/bpp-celery:$(BPP_VERSION) -t mpasternak79/bpp-celery:stable
