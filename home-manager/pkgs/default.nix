{ config, pkgs, lib, ... }:
{
  imports = [
    ./ncspot.nix
    ./neovim.nix
    ./shell.nix
  ];
  programs = { home-manager.enable = true; };
}
