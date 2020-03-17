bpp-on-docker
-------------

Pliki Dockera i skrpyty Makefile ułatwiające tworzenie obrazów oprogramowania BPP i pomocniczych.

.. image:: https://travis-ci.org/iplweb/bpp-on-docker.svg?branch=master
   :target: https://travis-ci.org/iplweb/bpp-on-docker/

Budowa:
```
	$ make build-stable
```

Uruchamianie: 
```
	$ make run-stable
```

Po zakończeniu uruchamiania się appservera (przy pierwszej próbie może to nieco
potrwać), stwórz konto superużytkownika. W tym celu, z drugiego okna terminala:


```
	$ docker-compose exec appserver bpp-manage.py createsuperuser
```
