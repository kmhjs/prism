# Prism

Prism updates Github streak with your private repository at anywhere.
It works like prism (glass).

## Usage

### Preparation

Before you use, following tasks must be completed.

1. Make hub repository named `prism_hub` in Github
2. Initialize hub repository with empty file named `log`
3. Create directory named `.prism` in your home directory
4. Clone your Github project `prism_hub` in `.prism`
5. Add one-line `export ZSH_PLUGIN_PRISM_HUB_REPOSITORY=${HOME}/.prism/prism_hub` into your `.zshenv`
6. Add hook in your `.zshrc` <Write>

### Register

Before you use, you must register your project for target of observation

1. In your repository, run `prism -a` for register your repository

### Un-register

1. In your repository, run `prism -d` for un-register your repository

## License

<Write>

## Contributions

<Write>
