![DotMH](https://github.com/dotmh/dotmh/raw/master/logo.png)

# DotMH Devcontainers

A standard DotMH Dev Containers templates build on custom Docker Images, for use in DotMH projects.

![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-%23FE5196?style=for-the-badge&logo=conventionalcommits&logoColor=white)](https://conventionalcommits.org)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg?style=for-the-badge&)](https://opensource.org/licenses/Apache-2.0)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg?style=for-the-badge&)](code_of_conduct.md)

# Docker Containers

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

Containers marked as **deprecated** will not receive updates as of the time of there deprecation. These are normally languages that I am currently not developing in, so I am not regularly [dog fooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) them.

Containers marked as **Experimental** are ones where I am new ot the language and toolchain and just want to get something up and running as a starting point.

## Base

Choose the base Image to build on top off

![Static Badge](https://img.shields.io/badge/Rocky_Linux-10B981?style=for-the-badge&logo=rockylinux&logoColor=%23FFFFFF)
![Static Badge](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=%23FFFFFF)

- [Rocky Linux](https://rockylinux.org/)
- [Ubuntu](https://ubuntu.com/)

### Tools

- [ZSH](https://www.zsh.org/) (Set as default Shell)
- [OhMyZSH](https://ohmyz.sh/)
- [BAT](https://github.com/sharkdp/bat) - A better Cat command
- [EZA](https://github.com/eza-community/eza) - A better ls command
- [Just](https://github.com/casey/just) - An awesome task runner

## Cloud

Adds cloud tools to the Base images

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![DigitalOcean](https://img.shields.io/badge/DigitalOcean-%230167ff.svg?style=for-the-badge&logo=digitalOcean&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)
![Packer](https://img.shields.io/badge/packer-%23E7EEF0.svg?style=for-the-badge&logo=packer&logoColor=%2302A8EF)

### Tools

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [Digital Ocean CLI](https://docs.digitalocean.com/reference/doctl/)
- [Terraform](https://www.terraform.io/)
- [Packer](https://www.packer.io/)

## Node

![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![PNPM](https://img.shields.io/badge/pnpm-%234a4a4a.svg?style=for-the-badge&logo=pnpm&logoColor=f69220)
![NVM](https://img.shields.io/badge/nvm-F4DD4B.svg?style=for-the-badge&logo=nvm&logoColor=333333)

For use with devloping applications on NodeJS can be built on top of any base

### Tools

- [NodeJS](https://nodejs.org/en)
- [PNPM](https://pnpm.io/)
- [NVM \[Node Version Manager\]](https://github.com/nvm-sh/nvm)

## Go

> [!WARNING]
> Deprecated (2025-12-27)

![Go](https://img.shields.io/badge/go-%2300ADD8.svg?style=for-the-badge&logo=go&logoColor=white)

For use with developing applications on GO can be built on top of any base

### Tools

- [Go](https://go.dev/)

## Kotlin

> [!WARNING]
> Deprecated (2025-12-27)

![Kotlin](https://img.shields.io/badge/kotlin-%237F52FF.svg?style=for-the-badge&logo=kotlin&logoColor=white)

For use with developing applications on Kotlin can be built on top of any base

### Tools

- [SDKMAN](https://sdkman.io/)
- [Kotlin](https://kotlinlang.org/)
- [KScript](https://github.com/kscripting/kscript)

## DotNet

![.Net](https://img.shields.io/badge/.NET-5C2D91?style=for-the-badge&logo=.net&logoColor=white)

For use when developing applications on the .net framework, can be built on top of any base

### Tools

- [.net](https://dotnet.microsoft.com/en-us/download)

## Rust

> [!INFO]
> Experimental

![Rust](https://img.shields.io/badge/rust-%23000000.svg?style=for-the-badge&logo=rust&logoColor=white)

For use when developing applications on Rust, can be built on top of any base

### Tools

- [Rustup](https://rust-lang.org/tools/install/)
    - [RustC](https://doc.rust-lang.org/rustc/index.html)
    - [Cargo](https://doc.rust-lang.org/cargo/index.html)

# Devcontainer Templates

- [Base](devcontainers/base/README.md)
- [Cloud](devcontainers/cloud/README.md)
- [Node](devcontainers/node/README.md)
- [Go](devcontainers/go/README.md)
- [Kotlin](devcontainers/kotlin/README.md)
- [C#](devcontainers/csharp/README.md)
- [Rust](devcontainers/rust/README.md)
