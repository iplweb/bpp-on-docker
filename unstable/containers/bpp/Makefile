BPP_VERSION=git-`date +%Y%m%d`
BPP_DESC=unstable

build:
	docker build -f Dockerfile . -t mpasternak79/bpp-base:$(BPP_VERSION) -t mpasternak79/bpp-base:$(BPP_DESC)

	docker build -f Dockerfile-appserver . -t mpasternak79/bpp-appserver:$(BPP_VERSION) -t mpasternak79/bpp-appserver:$(BPP_DESC)

	docker build -f Dockerfile-celery . -t mpasternak79/bpp-celery:$(BPP_VERSION) -t mpasternak79/bpp-celery:$(BPP_DESC)

push:
	docker push mpasternak79/bpp-base:$(BPP_VERSION)
	docker push mpasternak79/bpp-base:$(BPP_DESC)
	docker push mpasternak79/bpp-celery:$(BPP_VERSION)
	docker push mpasternak79/bpp-celery:$(BPP_DESC)
	docker push mpasternak79/bpp-appserver:$(BPP_VERSION)
	docker push mpasternak79/bpp-appserver:$(BPP_DESC)
