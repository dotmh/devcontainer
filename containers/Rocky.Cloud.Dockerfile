FROM ghcr.io/dotmh/devcontainer-rocky:latest

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

ARG digitalocean_cli_version=1.110.0

# Install Terraform
RUN dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo &&\
    dnf -y install terraform

# Install AWS 
RUN dnf -y install unzip &&\
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install

# Install Digital Ocean CLI
RUN curl -L "https://github.com/digitalocean/doctl/releases/download/v${digitalocean_cli_version}/doctl-${digitalocean_cli_version}-linux-amd64.tar.gz" -o "doctl.tar.gz" &&\
    tar xf ./doctl.tar.gz &&\
    mv doctl /usr/local/bin