FROM ghcr.io/dotmh/devcontainer:latest

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

ARG digitalocean_cli_version=1.110.0

# Install Terraform
RUN wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg &&\
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list &&\
    sudo apt update && sudo apt install terraform

# Install AWS 
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    sudo ./aws/install

# Install Digital Ocean CLI
RUN curl -L "https://github.com/digitalocean/doctl/releases/download/v${digitalocean_cli_version}/doctl-${digitalocean_cli_version}-linux-amd64.tar.gz" -o "doctl.tar.gz" &&\
    tar xf ./doctl.tar.gz &&\
    mv doctl /usr/local/bin
