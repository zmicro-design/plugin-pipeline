FROM whatwewant/zmicro:v1

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

ENV TZ="Asia/Shanghai"

COPY config/default_locale /etc/default/locale

COPY config/locale /var/lib/locales/supported.d/local

RUN apt install -yqq locales

RUN locale-gen en_US.UTF-8

ENV LC_CTYPE="en_US.UTF-8" LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8"

# update zmicro
RUN zmicro update

# set locale
RUN zmicro update && zmicro config locale

# pipeline
RUN zmicro plugin install pipeline

# COPY . /usr/local/lib/zmicro/plugins/pipeline

# RUN  zmicro plugin register pipeline

# install
RUN zmicro pipeline builder install base

# node
RUN zmicro pipeline builder install node

# go
RUN zmicro pipeline builder install go

# python
RUN zmicro pipeline builder install python

# deno
RUN zmicro pipeline builder install deno

# java
RUN zmicro pipeline builder install java

# info
RUN zmicro info
