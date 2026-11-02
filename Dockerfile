FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

RUN apk update && \
  apk add --no-cache bash jq && \
  apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing wabt

WORKDIR /opt/representer
COPY . .
ENTRYPOINT ["/opt/representer/bin/run.sh"]
