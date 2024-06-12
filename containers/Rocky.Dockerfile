FROM rockylinux:9.3

LABEL dev.containers.features="common"
LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

RUN dnf -y update

# Instal Development Tools (going to need these)
RUN dnf -y group install "Development Tools"

# Install some quailty of life utils
RUN dnf -y install wget && dnf -y install unzip

# Install RUST this is for EZA , BAT and Just
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Install ZSH
RUN dnf -y install util-linux-user &&\ 
    dnf -y install zsh &&\ 
    chsh -s /bin/zsh

# Install Oh My ZSH
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install EZA https://github.com/eza-community/eza
RUN . "$HOME/.cargo/env" &&\
    cargo install eza

# Install BAT https://github.com/sharkdp/bat
RUN . "$HOME/.cargo/env" &&\
    cargo install bat

# Install Just https://github.com/casey/just
RUN . "$HOME/.cargo/env" &&\
    cargo install just
