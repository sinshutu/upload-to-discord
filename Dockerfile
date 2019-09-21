FROM alpine:latest
LABEL author="Nocturlab"

RUN	apk add --no-cache curl

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
