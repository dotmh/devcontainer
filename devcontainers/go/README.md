# DotMH Dev Container - Go

A Devcontainer for use with Go development, optionally with tools for working with AWS

![Static Badge](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Static Badge](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)
![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)

- [Rocky Linux](https://rockylinux.org/)
- [Ubuntu](https://ubuntu.com/)

## Tools

- [ZSH](https://www.zsh.org/) (Set as default Shell)
- [OhMyZSH](https://ohmyz.sh/)
- [BAT](https://github.com/sharkdp/bat) - A better Cat command
- [EZA](https://github.com/eza-community/eza) - A better ls command
- [Just](https://github.com/casey/just) - An awesome task runner
- [NodeJS](https://nodejs.org/en)
- [PNPM](https://pnpm.io/)
- [NVM \[Node Version Manager\]](https://github.com/nvm-sh/nvm)

### When Using Cloud containers as the base 

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Terraform](https://www.terraform.io/)

## Visual Studio Extentions

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

When using this devcontainer under [Visual Studio Code (vscode)](https://code.visualstudio.com/) with the
[Devcontainer Extention](https://containers.dev/supporting#visual-studio-code), vscode will automatically install
the following extentions



- [A Spellchecker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [Go](https://marketplace.visualstudio.com/items?itemName=golang.go)
- [Go Template Tools](https://marketplace.visualstudio.com/items?itemName=jinliming2.vscode-go-template)
- [Github Actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)
- [Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)

## Usage

### Requirements

- [Devcontainer CLI](https://containers.dev/supporting#devcontainer-cli)

### Example

```bash
devcontainer templates apply -w . -t ghcr.io/dotmh/devcontainer/go -a '{"baseContainer":"devcontainer"}`
```

#### Options

- `baseContainer` :
    - `devcontainer` _DEFAULT_ - the ubuntu base container
    - `devcontainer-rocky` - the rocky linux base container
    - `devcontainer-cloud`- the ubuntu base container with cloud tools
    - `devcontainer-rocky-cloud` - the rocky linux base container with cloud tools