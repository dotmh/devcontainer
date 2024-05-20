FROM dotmh/devcontainer:latest

ARG EXTRA_NODE_VERSION=--lts

ENV SHELL=zsh

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN zsh -c "source $HOME/.nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"
RUN curl -fsSL https://get.pnpm.io/install.sh | sh -