FROM alpine:latest
LABEL author="@sinshutu"

LABEL "com.github.actions.name"="Upload to Discord"
LABEL "com.github.actions.description"="Uploads a file to Discord channel."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN	apk add --no-cache curl

COPY entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
