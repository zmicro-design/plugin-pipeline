FROM whatwewant/zmicro:v1

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

WORKDIR /build

ARG VERSION

ENV ZMICRO_PLUGIN_PIPELINE_VERSION=${VERSION}

RUN zmicro plugin install pipeline

RUN zmicro package install docker-compose

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh
