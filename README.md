# nixos config

WIP - There are caveats that I need to document here. Currently for example, my `configuration.nix` is almost stardard from the ISO. It needs to be abstracted out, and have the specifics of the system dealt with. Such as disk id's, etc.

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)

## About <a name = "about"></a>

This is a simple nixos setup leveraging flakes, and home-manager with the gnome desktop. 

## Getting Started <a name = "getting_started"></a>

TODO - automate install and solve chicken/egg issues with `git`.

- install nixos from the ISO with the Gnome Desktop
- clone the repository with `mkdir -p ~/dev/ && cd ~/dev/ && git clone git@github.com:bashfulrobot/nixos && cd ~/dev/nixos`
- Run `sudo nixos-rebuild switch --flake .#`