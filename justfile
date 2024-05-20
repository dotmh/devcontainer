build:
    docker build . --tag dotmh/devcontainer

run:
    docker run -it dotmh/devcontainer:latest /bin/zsh

build-ts:
    docker build -f Node.Dockerfile . --tag dotmh/devcontainer-ts

run-ts:
    docker run -it dotmh/devcontainer-ts:latest /bin/zsh