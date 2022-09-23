FROM alpine
LABEL org.opencontainers.image.title="httpie"
LABEL org.opencontainers.image.description="Runs httpie"
LABEL org.opencontainers.image.authors="Gildas Cherruel <gildas.cherruel@genesys.com>"
LABEL org.opencontainers.image.version="0.0.2"
LABEL org.opencontainers.image.licenses="MIT"

RUN addgroup -S httpie && \
    adduser  -S -g httpie httpie

RUN apk add --no-cache httpie

USER httpie

ENTRYPOINT [ "/usr/bin/http" ]
