FROM alpine:3.18.3

RUN apk update && \
  apk add --no-cache bash jq && \
  apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing wabt

WORKDIR /opt/representer
COPY . .
ENTRYPOINT ["/opt/representer/bin/run.sh"]
