namespace := "dotmh"
devcontainer := "devcontainer"
default_dockerfile := "Dockerfile"
registry := "ghcr.io"
latest := "latest"
version_file := '.version'
version := `\cat .version`
reports := "./reports"
trivyError := "Please make sure Trivy is installed and in your path, see https://trivy.dev/docs/latest/getting-started/"

# Build a docker container
[group("Builds")]
build CONTAINER=devcontainer DOCKERFILE=default_dockerfile BASE=devcontainer:
    docker build -f ./containers/{{DOCKERFILE}} . \
        --tag {{namespace}}/{{CONTAINER}}:{{version}} \
        --tag {{registry}}/{{namespace}}/{{CONTAINER}}:{{version}} \
        --tag {{registry}}/{{namespace}}/{{CONTAINER}}:latest \
        --build-arg base={{BASE}}

# Runs a ZSH shell on a docker container
[group("Run")]
run CONTAINER=devcontainer:
    @echo "running {{CONTAINER}} version {{version}}"
    docker run -it {{namespace}}/{{CONTAINER}}:{{version}} /bin/zsh

# Runs a Trivy scan on the container
[group("Run")]
scan CONTAINER=devcontainer:
    mkdir -p {{reports}}
    command -v trivy >/dev/null 2>&1 || (echo "{{trivyError}}"; exit 1)
    trivy image {{namespace}}/{{CONTAINER}}:{{version}} --output {{reports}}/{{CONTAINER}}-scan.log 

# Publish a docker container to the registry
[group("Publish")]
publish USERNAME CONTAINER=devcontainer: mac-unlock (login USERNAME) && (_publish CONTAINER)

# Publish within a Github action to the registry
[group("Publish")]
action-publish CONTAINER USERNAME : (login USERNAME) && (_publish CONTAINER)

# Login to the registry within Github action to the registry
[group("Publish")]
login USERNAME:
    echo $DOCKER_GIT_LOGIN | docker login {{registry}} --username {{USERNAME}} --password-stdin

# Show the version of the repo
[group("Version")]
version:
    ./simver.bash validate {{version}}
    @echo {{version}}

# Set the current version to a new version
[group("Version")]
version-set VERSION: && (_setTemplatesVersion)
    ./simver.bash validate {{VERSION}}
    @echo {{VERSION}} > {{version_file}}

# Bump the major simver version
[group("Version")]
version-bump-major: version && (_setTemplatesVersion)
    ./simver.bash bump major {{version}} > {{version_file}}

# Bump the minor simver version
[group("Version")]
version-bump-minor: version && (_setTemplatesVersion)
    ./simver.bash bump minor {{version}} > {{version_file}}

# Bump the patch simver version
[group("Version")]
version-bump-patch: version && (_setTemplatesVersion)
    ./simver.bash bump patch {{version}} > {{version_file}}

# On MacOS __ONLY__ unlock the keychain, required for some docker interactions.
[group("MacOS")]
mac-unlock:
    security unlock-keychain || true

# Build All Dase Containers 
[group("Builds")]
build-base: 
    just build
    just build devcontainer-rocky Rocky.Dockerfile

# Build All Cloud Containers
[group("Builds")]
build-cloud:
    just build devcontainer-cloud Cloud.Dockerfile
    just build devcontainer-rocky-cloud Rocky.Cloud.Dockerfile

_publish CONTAINER=devcontainer:
    docker push -a {{registry}}/{{namespace}}/{{CONTAINER}}

_setTemplatesVersion:
    find . -name 'devcontainer-template.json' -type f -exec sed -i -E -e 's/[0-9]+\.[0-9]+\.[0-9]+/{{`\cat .version`}}/g' {} \;
