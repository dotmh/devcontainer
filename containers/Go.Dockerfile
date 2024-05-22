FROM ghcr.io/dotmh/devcontainer:1.0.0

LABEL org.opencontainers.image.source https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses apache-2.0

# Install GO
RUN curl https://go.dev/dl/go1.22.3.linux-amd64.tar.gz -o go-linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go-linux-amd64.tar.gz
