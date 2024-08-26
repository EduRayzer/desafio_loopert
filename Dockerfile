FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
    icecast

EXPOSE 8000


COPY icecast.xml /etc/icecast.xml


CMD ["icecast", "-c", "/etc/icecast.xml"]
