bpp-on-docker
-------------

.. image:: https://travis-ci.org/iplweb/bpp-on-docker.svg?branch=master
   :target: https://travis-ci.org/iplweb/bpp-on-docker/

Pliki Dockera i skrypty ``Makefile`` ułatwiające tworzenie obrazów oprogramowania BPP i pomocniczych.

Plik ``Makefile`` definiuje następujace rodzaje celów:

* ``-stable``: buduje wersję *teoretycznie* stabilną, instalowaną
  z repozytorium pakietów Pythona PyPI.
* ``-unstable``: buduje wersję niestabilną, instalowaną wprost z
  repozytorium GitHub.

Jeżeli chcesz po prostu uruchomić oprogramowanie BPP:

.. code-block::

  $ make run-stable

To polecenie uruchomi kilka kontenerów za pomocą ``docker-compose``, przeprowadzi
migrację bazy danych i uruchomi serwer aplikacji nasłuchujący pod adresem
http://127.0.0.1:8080/

Domyślny login do systemu to tradycyjnie admin/admin .