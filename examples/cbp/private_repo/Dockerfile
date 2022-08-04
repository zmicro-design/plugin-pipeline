FROM whatwewant/pipeline_runner:v1.0.0

RUN zmicro plugin install pipeline

WORKDIR /build

COPY . .

CMD ./cbp.sh
