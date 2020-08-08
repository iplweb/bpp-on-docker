#!/bin/sh

createdb bpp || true

staticroot=/usr/local/lib/python3.8/site-packages/django_bpp/staticroot

if [ ! -L $staticroot ]; then
    cp -R /usr/local/lib/python3.8/site-packages/django_bpp/staticroot/* /staticroot
    rm -rf $staticroot
    ln -s /staticroot $staticroot
fi    

bpp-manage.py migrate

export DJANGO_SETTINGS_MODULE=django_bpp.settings.production

exec uvicorn --host 0.0.0.0 --port=8080 django_bpp.asgi:application
