FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

# Install ZSH
RUN apt -y install --no-install-recommends zsh
RUN chsh -s /bin/zsh

# Install EZA https://github.com/eza-community/eza
RUN apt -y install --no-install-recommends gpg
RUN mkdir -p /etc/apt/keyrings
RUN wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
RUN chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
RUN apt update && apt install -y eza
# RUN apt install -y eza

# Install BAT https://github.com/sharkdp/bat
RUN apt -y install --no-install-recommends bat

# Install Just https://github.com/casey/just
RUN wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null
RUN echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list
RUN sudo apt update && apt install -y just
