FROM circleci/python:3.7-node
RUN sudo apt-get update && sudo apt-get install -y gettext
WORKDIR /home/circleci
ARG CACHEBUST=1
RUN git clone https://github.com/iplweb/bpp/
WORKDIR bpp
RUN sudo npm install -g grunt-cli
RUN sudo pip install -r requirements.txt -r requirements_dev.txt
RUN make bdist_wheel

FROM python:3.7
COPY --from=0 /home/circleci/bpp/dist/bpp_iplweb-*-none-any.whl /
RUN pip install /*whl
EXPOSE 8080
ADD entrypoint-appserver.sh /
RUN chmod +x entrypoint-appserver.sh
ENTRYPOINT /entrypoint-appserver.sh