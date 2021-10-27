# dotfiles

Windows dotfiles managed using a bare git repository. No extra tooling or symlinks required.

## Prerequisites

The PowerShell profile requires the following modules to be installed:

- [posh-git](https://github.com/dahlbyk/posh-git)
- [PSColor](https://github.com/Davlind/PSColor)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)

## Setup

Clone as a bare repository:

```sh
git clone --bare https://github.com/pawelbialaszczyk/dotfiles.git $HOME/.dotfiles
```

Checkout to restore working tree files:

```sh
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

Configure the repository to include the git config:

```sh
git --git-dir=$HOME/.dotfiles --work-tree=$HOME config --local include.path ../.dotfilesconfig
```

Restart PowerShell and from now on use the `dotfiles` command as an alias for git while working with dotfiles.

In case PowerShell doesn't recognize the `dotfiles` command, you need to dot source the profile script in your profile file:

```sh
echo '. "$HOME\Documents\PowerShell\Profile.ps1"' > $PROFILE
```
