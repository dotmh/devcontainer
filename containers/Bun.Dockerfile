ARG base=devcontainer
FROM ghcr.io/dotmh/${base}:latest

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

RUN curl -fsSL https://bun.sh/install | bash