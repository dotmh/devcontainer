# DotMH Dev Container - Cloud

A very simply base template it is just the OS ether Ubuntu or Rocky Linux with some quailty of life tools and cloud tools for working with Terraform and AWS.

![Static Badge](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Static Badge](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)
![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%230167ff.svg?style=for-the-badge&logo=digitalOcean&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Packer](https://img.shields.io/badge/packer-%23E7EEF0.svg?style=for-the-badge&logo=packer&logoColor=%2302A8EF)

- [Rocky Linux](https://rockylinux.org/)
- [Ubuntu](https://ubuntu.com/)

## Tools

- [ZSH](https://www.zsh.org/) (Set as default Shell)
- [OhMyZSH](https://ohmyz.sh/)
- [BAT](https://github.com/sharkdp/bat) - A better Cat command
- [EZA](https://github.com/eza-community/eza) - A better ls command
- [Just](https://github.com/casey/just) - An awesome task runner
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Digital Ocean CLI](https://docs.digitalocean.com/reference/doctl/)
- [Terraform](https://www.terraform.io/)
- [Packer](https://www.packer.io/)

## Usage

### Requirements

- [Devcontainer CLI](https://containers.dev/supporting#devcontainer-cli)

### Example

```bash
devcontainer templates apply -w . -t ghcr.io/dotmh/devcontainer/cloud -a '{"baseContainer":"devcontainer-cloud"}`
```

#### Options

- `baseContainer` :
  - `devcontainer-cloud` _DEFAULT_ - the ubuntu base container
  - `devcontainer-rocky-cloud` - the rocky linux base container
