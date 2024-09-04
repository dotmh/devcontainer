# DotMH Dev Container - Node

A Devcontainer for use with NodeJS development, optionally with tools for working with AWS

![Static Badge](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Static Badge](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![PNPM](https://img.shields.io/badge/pnpm-%234a4a4a.svg?style=for-the-badge&logo=pnpm&logoColor=f69220)
![NVM](https://img.shields.io/badge/nvm-F4DD4B.svg?style=for-the-badge&logo=nvm&logoColor=333333)

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
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%230167ff.svg?style=for-the-badge&logo=digitalOcean&logoColor=white)

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Digital Ocean CLI](https://docs.digitalocean.com/reference/doctl/)
- [Terraform](https://www.terraform.io/)

## Visual Studio Extentions

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

When using this devcontainer under [Visual Studio Code (vscode)](https://code.visualstudio.com/) with the
[Devcontainer Extention](https://containers.dev/supporting#visual-studio-code), vscode will automatically install
the following extentions

- [A Spellchecker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [Prettier Extension](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Eslint Extension](https://marketplace.visualstudio.com/items?itemName=baeumer.vscode-eslint)
- [Tslint Extension - Deprecated](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
- [Tool for helping when renaming tags](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
- [An Extension for working with Just files](https://marketplace.visualstudio.com/items?itemName=nefrob.vscode-just-syntax)
- [Terraform](https://marketplace.visualstudio.com/items?itemName=hashicorp.terraform)
- [Tools for making NPM easier](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script)
- [More Tools for making NPM easier](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
- [A Handy tools for making Typescript Errors easier to understand](https://marketplace.visualstudio.com/items?itemName=mattpocock.ts-error-translator)
- [Vite](https://marketplace.visualstudio.com/items?itemName=antfu.vite)
- [Github Actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)
- [Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)

## Usage

### Requirements

- [Devcontainer CLI](https://containers.dev/supporting#devcontainer-cli)

### Example

```bash
devcontainer templates apply -w . -t ghcr.io/dotmh/devcontainer/node -a '{"baseContainer":"devcontainer"}`
```

#### Options

- `baseContainer` :
  - `devcontainer` _DEFAULT_ - the ubuntu base container
  - `devcontainer-rocky` - the rocky linux base container
  - `devcontainer-cloud`- the ubuntu base container with cloud tools
  - `devcontainer-rocky-cloud` - the rocky linux base container with cloud tools
