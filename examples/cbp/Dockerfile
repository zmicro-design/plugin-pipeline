FROM whatwewant/pipeline_runner:v1.0.0

RUN zmicro plugin update pipeline

COPY . /build

RUN /build/cbp.sh
