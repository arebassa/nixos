{ config, pkgs, lib, ... }:

{
  imports = [
    ./ncspot.nix
    ./neovim.nix

  ];

  programs = { home-manager.enable = true; };

}
