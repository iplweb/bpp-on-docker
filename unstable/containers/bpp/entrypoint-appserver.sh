#!/bin/sh

createdb bpp || true

staticroot=/usr/local/lib/python3.7/site-packages/django_bpp/staticroot

if [ ! -L $staticroot ]; then
    cp -R /usr/local/lib/python3.7/site-packages/django_bpp/staticroot/* /staticroot
    rm -rf $staticroot
    ln -s /staticroot $staticroot
fi    

bpp-manage.py migrate

exec uwsgi --module=django_bpp.wsgi --master --http-socket=:8080
