FROM ghcr.io/dotmh/devcontainer-rocky-base:latest

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

# Install Terraform
RUN dnf install -y dnf-plugins-core &&\
    dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo &&\
    dnf install terraform -y

# Install AWS 
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    which unzip &&\
    \unzip ./awscliv2.zip &&\
    ./aws/install