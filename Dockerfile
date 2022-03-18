FROM alpine:3.15
LABEL maintainer="Gildas Cherruel <gildas@breizh.org>"
LABEL version="0.0.1"
LABEL description="Runs httpie"

RUN addgroup -S httpie && \
    adduser  -S -g httpie httpie

RUN apk add --no-cache httpie

USER httpie

ENTRYPOINT [ "/usr/bin/http" ]
