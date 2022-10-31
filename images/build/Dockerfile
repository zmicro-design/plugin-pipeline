FROM whatwewant/zmicro:v1

LABEL MAINTAINER="Zero<tobewhatwewant@outlook.com>"

WORKDIR /build

RUN zmicro plugin install pipeline

COPY entrypoint.sh /entrypoint.sh

RUN cat /entrypoint.sh

CMD /entrypoint.sh
