ARG base=devcontainer
FROM ghcr.io/dotmh/${base}:latest

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

ARG EXTRA_NODE_VERSION=--lts

ENV SHELL=zsh

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN bash -c "source $HOME/.nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"
RUN curl -fsSL https://get.pnpm.io/install.sh | sh -
