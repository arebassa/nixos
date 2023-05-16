{ config, pkgs, lib, ... }:
{
  imports = [
    ./kcli.nix
    ./ncspot.nix
    ./neovim.nix
    ./shell.nix
  ];
}
