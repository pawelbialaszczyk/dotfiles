# dotfiles

Windows dotfiles managed using a bare git repository. No extra tooling or symlinks required.

## Prerequisites

The PowerShell profile requires the following modules to be installed:

- [posh-git](https://github.com/dahlbyk/posh-git)
- [PSColor](https://github.com/Davlind/PSColor)

## Setup

Clone as a bare repository:

```powershell
git clone --bare https://github.com/pawelbialaszczyk/dotfiles.git $HOME/.dotfiles
```

Checkout to restore working tree files:

```powershell
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
```

Restart PowerShell and from now on use the `dotfiles` command as an alias for git while working with dotfiles.

Lastly, configure the repository to not show untracked files:

```powershell
dotfiles config --local status.showUntrackedFiles no
```
