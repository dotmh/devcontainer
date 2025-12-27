FROM rockylinux/rockylinux:10.1

LABEL dev.containers.features="common"
LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

# Set up  extended repos
RUN dnf -y install dnf-plugins-core &&\
    dnf -y install epel-release

RUN dnf -y update

# Instal Development Tools (going to need these)
RUN dnf -y group install "Development Tools"

# Install ZSH
RUN dnf -y install util-linux-user &&\ 
    dnf -y install zsh &&\ 
    chsh -s /bin/zsh

# Install Oh My ZSH
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN dnf -y install wget

# Install EZA https://github.com/eza-community/eza
# RUN dnf -y install eza
RUN wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz &&\
    chmod +x eza &&\
    chown root:root eza &&\
    mv eza /usr/local/bin/eza

# Install BAT https://github.com/sharkdp/bat
RUN dnf -y install bat

# Install Just https://github.com/casey/just
RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/bin

# Update zshrc automatically
SHELL ["zsh", "-c"]
RUN cat <<EOL >> $HOME/.zshrc
echo "Starting ....."
alias cat="bat -P"
alias ls="eza"
EOL