# DotMH Dev Container - Base

A very simply base template it is just the OS ether Ubuntu or Rocky Linux with some quailty of life tools. 

![Static Badge](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Static Badge](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)

- [Rocky Linux](https://rockylinux.org/)
- [Ubuntu](https://ubuntu.com/)

## Tools

- [ZSH](https://www.zsh.org/) (Set as default Shell)
- [OhMyZSH](https://ohmyz.sh/)
- [BAT](https://github.com/sharkdp/bat) - A better Cat command
- [EZA](https://github.com/eza-community/eza) - A better ls command
- [Just](https://github.com/casey/just) - An awesome task runner


## Usage

### Requirements

- [Devcontainer CLI](https://containers.dev/supporting#devcontainer-cli)

### Example

```bash
devcontainer templates apply -w . -t ghcr.io/dotmh/devcontainer/base -a '{"baseContainer":"devcontainer"}`
```

#### Options

- `baseContainer` :
    - `devcontainer` _DEFAULT_ - the ubuntu base container
    - `devcontainer-rocky` - the rocky linux base container