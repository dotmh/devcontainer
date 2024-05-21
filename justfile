namespace := "dotmh"
devcontainer := "devcontainer"
default_dockerfile := "Dockerfile"
registry := "ghcr.io"
latest := "latest"

# Build a docker container
build CONTAINER=devcontainer DOCKERFILE=default_dockerfile BASE=devcontainer:
    docker build -f ./containers/{{DOCKERFILE}} . --tag {{namespace}}/{{CONTAINER}} --build-arg base={{BASE}}
    

# Runs a ZSH shell on a docker container
run CONTAINER=devcontainer:
    docker run -it {{namespace}}/{{CONTAINER}} /bin/zsh

# Publish a docker container to the registry
publish CONTAINER=devcontainer VERSION=latest:
    echo $DOCKER_GIT_LOGIN | docker login {{registry}} --username {{namespace}} --password-stdin
    docker tag {{namespace}}/{{CONTAINER}} {{registry}}/{{namespace}}/{{CONTAINER}}:{{VERSION}}
    docker push {{registry}}/{{namespace}}/{{CONTAINER}}:{{VERSION}}