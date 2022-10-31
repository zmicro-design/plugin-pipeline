FROM whatwewant/zmicro:v1

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

WORKDIR /build

RUN zmicro plugin install pipeline

RUN zmicro package install docker-compose

COPY entrypoint.sh /entrypoint.sh

CMD /entrypoint.sh
