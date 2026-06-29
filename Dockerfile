FROM alpine:3.23.5@sha256:fd791d74b68913cbb027c6546007b3f0d3bc45125f797758156952bc2d6daf40

RUN apk update && \
  apk add --no-cache bash jq && \
  apk add --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/testing wabt

WORKDIR /opt/representer
COPY . .
ENTRYPOINT ["/opt/representer/bin/run.sh"]
