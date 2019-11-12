#!/bin/sh
exec celery worker -A django_bpp.celery_tasks -c 1
