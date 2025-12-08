FROM mcr.microsoft.com/devcontainers/base:ubuntu

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update

# Install ZSH
RUN apt -y install --no-install-recommends zsh &&\
    chsh -s /bin/zsh

# Install EZA https://github.com/eza-community/eza
RUN apt -y install --no-install-recommends gpg &&\
    mkdir -p /etc/apt/keyrings &&\
    wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg &&\
    echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list &&\
    chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list &&\
    apt update && apt install -y eza

# Install BAT https://github.com/sharkdp/bat
RUN apt -y install --no-install-recommends bat

# Install Just https://github.com/casey/just
RUN wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null &&\
    echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list &&\
    sudo apt update && apt install -y just

# Update zshrc automatically
SHELL ["zsh", "-c"]
RUN cat <<EOL >> $HOME/.zshrc
echo "Starting ....."
alias cat="batcat -P"
alias ls="eza"
EOL
