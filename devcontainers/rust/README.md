# DotMH Dev Container - Rust

> [!IMPORTANT]
> Experimental

A Devcontainer for use with Rust development, optionally with tools for working with AWS

![Rocky Linux](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)
![Rust](https://img.shields.io/badge/rust-%23000000.svg?style=for-the-badge&logo=rust&logoColor=white)

- [Rocky Linux](https://rockylinux.org/)
- [Ubuntu](https://ubuntu.com/)

## Tools

- [ZSH](https://www.zsh.org/) (Set as default Shell)
- [OhMyZSH](https://ohmyz.sh/)
- [BAT](https://github.com/sharkdp/bat) - A better Cat command
- [EZA](https://github.com/eza-community/eza) - A better ls command
- [Just](https://github.com/casey/just) - An awesome task runner
- [Rustup](https://rust-lang.org/tools/install/) - The Rust install manager
- [RustC](https://doc.rust-lang.org/rustc/index.html) - The Rust Compiler
- [Cargo](https://doc.rust-lang.org/cargo/index.html) - The Rust Package Manager and Build Tool

### When Using Cloud containers as the base

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%230167ff.svg?style=for-the-badge&logo=digitalOcean&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Packer](https://img.shields.io/badge/packer-%23E7EEF0.svg?style=for-the-badge&logo=packer&logoColor=%2302A8EF)

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Digital Ocean CLI](https://docs.digitalocean.com/reference/doctl/)
- [Terraform](https://www.terraform.io/)
- [Packer](https://www.packer.io/)

## Visual Studio Extentions

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

When using this devcontainer under [Visual Studio Code (vscode)](https://code.visualstudio.com/) with the
[Devcontainer Extention](https://containers.dev/supporting#visual-studio-code), vscode will automatically install
the following extentions

- [A Spellchecker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [An Extension for working with Just files](https://marketplace.visualstudio.com/items?itemName=nefrob.vscode-just-syntax)
- [Terraform](https://marketplace.visualstudio.com/items?itemName=hashicorp.terraform)
- [Github Actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions)
- [Copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot)
- [Copilot Chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat)
- [Rust Analyzer](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust-analyzer)
- [Search crates.io](https://marketplace.visualstudio.com/items?itemName=belfz.search-crates-io)

## Usage

### Requirements

- [Devcontainer CLI](https://containers.dev/supporting#devcontainer-cli)

### Example

```bash
devcontainer templates apply -w . -t ghcr.io/dotmh/devcontainer/rust -a '{"baseContainer":"devcontainer"}`
```

#### Options

- `baseContainer` :
  - `devcontainer-rust` _DEFAULT_ - the ubuntu base container
  - `devcontainer-rocky-rust` - the rocky linux base container
  - `devcontainer-cloud-rust`- the ubuntu base container with cloud tools
  - `devcontainer-rocky-cloud-rust` - the rocky linux base container with cloud tools
