FROM postgres:12
RUN localedef -i pl_PL -c -f UTF-8 -A /usr/share/locale/locale.alias pl_PL.UTF-8
ENV LANG pl_PL.utf8

RUN apt-mark hold postgresql-12 postgresql-client-12 postgresql-common postgresql-client-common
RUN apt-get update -qq && apt-get install postgresql-plpython3-12 -qq -y

