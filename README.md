# nixos config

WIP - There are caveats that I need to document here. Currently for example, my `configuration.nix` is almost stardard from the ISO. It needs to be abstracted out, and have the specifics of the system dealt with. Such as disk id's, etc.

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [TODO](#todo)

## About <a name = "about"></a>

This is a simple nixos setup leveraging flakes, and home-manager with the gnome desktop. 

## Getting Started <a name = "getting_started"></a>

- install nixos from the ISO with the Gnome Desktop
- clone the repository with `mkdir -p ~/dev/ && cd ~/dev/ && git clone git@github.com:bashfulrobot/nixos && cd ~/dev/nixos`
- Run `sudo nixos-rebuild switch --flake .#`

## TODO <a name = "todo"></a>

- [ ] finish `oh-my-posh` prompt theme
- [ ] configure `vscode`
- [ ] configure `espanso`
- [ ] add all my terminal tools (ie - `exa`, `dust`, etc)
- [ ] add fish config
- [ ] install goland
- [ ] change window close shortcut to `ctrl-q`
- [ ] figure out dconf skeleton
- [ ] configure gnome settings via dconf
- [ ] automate install.
    - [ ] Look at disk partitions as code with [disko](https://github.com/nix-community/disko)
        - [ ] time to rethink file systems
- [ ] sanitize `configuration.nix` and `hardware-configuration.nix` for reuse.
- [ ] start skeleton to add cfg for my tower
- [ ] build tower cfg...
