namespace := "dotmh"
devcontainer := "devcontainer"
default_dockerfile := "Dockerfile"
registry := "ghcr.io"
latest := "latest"
version_file := '.version'
version := `\cat .version`
reports := "./reports"

# Build a docker container
build CONTAINER=devcontainer DOCKERFILE=default_dockerfile BASE=devcontainer:
    docker build -f ./containers/{{DOCKERFILE}} . --tag {{namespace}}/{{CONTAINER}}:{{version}} --tag {{registry}}/{{namespace}}/{{CONTAINER}}:{{version}} --tag {{registry}}/{{namespace}}/{{CONTAINER}}:latest --build-arg base={{BASE}}

# Runs a ZSH shell on a docker container
run CONTAINER=devcontainer:
    @echo "running {{CONTAINER}} version {{version}}"
    docker run -it {{namespace}}/{{CONTAINER}}:{{version}} /bin/zsh

# Runs a Trivy scan on the container
scan CONTAINER=devcontainer:
    mkdir -p {{reports}}
    which -s trivy && trivy image {{namespace}}/{{CONTAINER}} --output {{reports}}/{{CONTAINER}}-scan.log

# Publish a docker container to the registry
publish USERNAME CONTAINER=devcontainer: mac-unlock (login USERNAME) && (_publish CONTAINER)

# Publish within a Github action to the registry
action-publish CONTAINER USERNAME : (login USERNAME) && (_publish CONTAINER)

# Login to the registry within Github action to the registry
login USERNAME:
    echo $DOCKER_GIT_LOGIN | docker login {{registry}} --username {{USERNAME}} --password-stdin

# Show the version of the repo
version:
    ./simver.bash validate {{version}}
    @echo {{version}}

# Set the current version to a new version
version-set VERSION:
    ./simver.bash validate {{VERSION}}
    @echo {{VERSION}} > {{version_file}}

# Bump the major simver version
version-bump-major: version
    ./simver.bash bump major {{version}} > {{version_file}}

# Bump the minor simver version
version-bump-minor: version
    ./simver.bash bump minor {{version}} > {{version_file}}

# Bump the patch simver version
version-bump-patch: version
    ./simver.bash bump patch {{version}} > {{version_file}}

# On MacOS __ONLY__ unlock the keychain, required for some docker interactions.
mac-unlock:
    security unlock-keychain || true

_publish CONTAINER=devcontainer:
    docker push -a {{registry}}/{{namespace}}/{{CONTAINER}}