ARG base=devcontainer

FROM ghcr.io/dotmh/${base}:latest

LABEL org.opencontainers.image.source=https://github.com/dotmh/devcontainer
LABEL org.opencontainers.image.licenses=apache-2.0

# Install SDKMan to manage Kotlin
RUN curl -s "https://get.sdkman.io" | bash

# Install Kotlin
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install kotlin"

# Install KScript
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && sdk install kscript"