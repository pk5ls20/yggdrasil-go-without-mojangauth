FROM alpine:latest

LABEL maintainer="pk5ls20 <pk5ls20@outlook.com>"
LABEL "Description"="Go Yggdrasil Server Without MojangAuth"

ARG TARGETOS
ARG TARGETARCH
RUN mkdir -p /app
COPY "build/yggdrasil-go-without-mojangauth-${TARGETOS}-${TARGETARCH}" /app/yggdrasil-go-without-mojangauth

EXPOSE 8080
VOLUME /app/data
COPY assets /app/data/assets/

WORKDIR /app/data
ENTRYPOINT ["/app/yggdrasil-go-without-mojangauth"]
