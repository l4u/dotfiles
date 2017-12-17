# dotfiles

- fish shell with fisherman
- karabiner with JIS and mouse button remap

## Usage

Installing fish config

```
stow -vvt $HOME fish --ignore .DS_Store
```

Installing config for VSCode. See https://github.com/Microsoft/vscode/issues/3884

```
stow -vvt "$HOME/Library/Application Support/Code/User" vscode --ignore .DS_Store
```

## Brewfile

Install

```
brew bundle
```

Check if everything is installed
```
brew bundle check
```

* https://speakerdeck.com/anahkiasen/a-storm-homebrewin

## Other dotfiles and tools

- https://dotfiles.github.io
- https://github.com/lra/mackup
