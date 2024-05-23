ARG base=devcontainer

FROM ghcr.io/dotmh/${base}:1.0.0

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

ARG go_version=1.22.3

# Install GO
RUN rm -rf /usr/local/go
RUN curl "https://go.dev/dl/go${go_version}.linux-amd64.tar.gz" -Lo "go-linux-amd64.tar.gz" && tar -C /usr/local -xzf go-linux-amd64.tar.gz
