FROM ghcr.io/dotmh/devcontainer-rocky-base:latest

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

# Install Terraform
RUN dnf -y install 'dnf-command(config-manager)' &&\
    dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo &&\
    dnf -y install terraform

# Install AWS 
RUN dnf -y install awscli