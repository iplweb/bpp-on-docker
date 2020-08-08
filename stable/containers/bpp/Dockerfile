FROM python:3.8
RUN apt update && apt install -y build-essential python3-dev libmemcached-dev
RUN pip install --pre bpp-iplweb
CMD bpp-manage.py
