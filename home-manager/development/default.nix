{ config, pkgs, lib, ... }:

{
  imports = [
    ./go.nix
    ./python.nix

  ];

  programs = { home-manager.enable = true; };

}
