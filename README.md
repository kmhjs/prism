# Prism

Prism updates Github streak with your private repository at anywhere.
It works like prism (glass).

## Usage

### Preparation

Before you use, following tasks must be completed.

1. Specify your favorite directory for storing prism task files as `export ZSH_PLUGIN_PRISM_PATH=${HOME}/.prism` in your `.zshenv`
2. Specify yoru favorite log store repository as `export ZSH_PLUGIN_PRISM_HUB_REPOSITORY=prism_hub` in your `.zshenv`

```
# .zshenv (Example)

export ZSH_PLUGIN_PRISM_PATH=${HOME}/.prism
export ZSH_PLUGIN_PRISM_HUB_REPOSITORY=prism_hub
```

3. Create directory `ZSH_PLUGIN_PRISM_PATH`
4. Make hub repository `ZSH_PLUGIN_PRISM_HUB_REPOSITORY` in Github, and clone it into `ZSH_PLUGIN_PRISM_PATH` (or do it manually)
5. Initialize hub repository with empty file named `log`
6. Add one-line `export ZSH_PLUGIN_PRISM_HUB_REPOSITORY=${HOME}/.prism/prism_hub` into your `.zshenv`
7. Add hook in your `.zshrc` as follows

```
# .zshrc

FPATH=path/to/prism/src:$FPATH
autoload -Uz prism
function prism-preexec() { prism --preexec $* }
function prism-precmd() { prism --precmd }
add-zsh-hook preexec prism-preexec
add-zsh-hook precmd  prism-precmd

```

### Register

Before you use, you must register your project for target of observation

1. In your repository, run `prism -a` for register your repository

### Un-register

1. In your repository, run `prism -d` for un-register your repository

### Update streak information in Github

1. You must push repository information to Github. `prism --push`

### Note

This plugin wants to use variable `ZSH_PLUGIN_PRISM_COMMIT_FLAG` for checking of commit status.
Please do not make conflicts.

## License

See `LICENSE`.

## Contributions

Now, this projcet needs more options, bug-fixing, support Antigen etc.
