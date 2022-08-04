# Builder
FROM golang:1.18-alpine as builder

RUN         apk add --no-cache gcc g++ make git

WORKDIR     /app

COPY        go.mod ./

# COPY        go.sum ./

RUN         go mod download

COPY        . ./

RUN         CGO_ENABLED=0 \
            GOOS=linux \
            GOARCH=amd64 \
            go build -v -o serve

# Product
FROM alpine:latest

LABEL       MAINTAINER="Zero<tobewhatwewant@gmail.com>"

COPY        --from=builder /app/serve /bin

ARG         VERSION=v1.0.0

ENV         VERSION=${VERSION}

CMD         serve