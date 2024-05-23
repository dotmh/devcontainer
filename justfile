namespace := "dotmh"
devcontainer := "devcontainer"
default_dockerfile := "Dockerfile"
registry := "ghcr.io"
latest := "latest"
version_file := '.version'
version := `\cat .version`

# Build a docker container
build CONTAINER=devcontainer DOCKERFILE=default_dockerfile BASE=devcontainer:
    docker build -f ./containers/{{DOCKERFILE}} . --tag {{namespace}}/{{CONTAINER}}:{{version}} --tag {{registry}}/{{namespace}}/{{CONTAINER}}:{{version}} --tag {{registry}}/{{namespace}}/{{CONTAINER}}:latest --build-arg base={{BASE}}

# Runs a ZSH shell on a docker container
run CONTAINER=devcontainer:
    @echo "running {{CONTAINER}} version {{version}}"
    docker run -it {{namespace}}/{{CONTAINER}}:{{version}} /bin/zsh

# Publish a docker container to the registry
publish CONTAINER=devcontainer: && (_publish CONTAINER)
    echo $DOCKER_GIT_LOGIN | docker login {{registry}} --username {{namespace}} --password-stdin

# Publish within a Github action to the registry
action-publish CONTAINER USERNAME PASSWORD: && (_publish CONTAINER)
    docker login {{registry}} --username {{USERNAME}} --password {{PASSWORD}}

# Show the version of the repo
version:
    ./simver.bash validate {{version}}
    @echo {{version}}

# Set the current version to a new version
set-version VERSION:
    ./simver.bash validate {{VERSION}}
    @echo {{VERSION}} > {{version_file}}

# Bump the major simver version
bump-version-major: version
    ./simver.bash bump major {{version}} > {{version_file}}

# Bump the minor simver version
bump-version-minor: version
    ./simver.bash bump minor {{version}} > {{version_file}}

# Bump the patch simver version
bump-version-patch: version
    ./simver.bash bump patch {{version}} > {{version_file}}

_publish CONTAINER=devcontainer:
    docker push -a {{registry}}/{{namespace}}/{{CONTAINER}}