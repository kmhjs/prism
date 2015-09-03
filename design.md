# Implementation plan

* Implement with Zsh and Zsh hooks
* Hub repository allocation
    * To output private repository update to Github, base repository will be used as a hub repository
    * Zsh -> <Sub shell>{[Observe repository] -> (update task) -> [Hub repository] -> (push task)}
* Hub repository
    * Hub repository contains logging file
* Following information must be in environment variable
    * Hub repository root path
    * Configuration file path
* Configuration file
    * Configuration file may contain observation target repository paths

# Message

* When user give command `git commit ...`, observer overwrites logging file by MD5 hash value of `date`.
* Commit message will be `[Observer] -> User updated private repository`
