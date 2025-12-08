ARG base=devcontainer

FROM ghcr.io/dotmh/${base}:latest

ARG version=LTS

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

RUN wget https://dot.net/v1/dotnet-install.sh -O ./dotnet-install.sh &&\
    chmod +x ./dotnet-install.sh &&\
    ./dotnet-install.sh --channel ${version} 

SHELL ["zsh", "-c"]
RUN echo -e "export PATH=\"$HOME/.dotnet:$PATH\"\n" >> $HOME/.zshrc