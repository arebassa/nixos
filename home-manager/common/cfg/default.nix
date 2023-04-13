{ config, pkgs, lib, ... }:

{
  imports = [
    ./bash.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    ./ncspot.nix
    ./neovim.nix
    ./ssh.nix
    ./wezterm.nix

  ];

  programs = { home-manager.enable = true; };
  fonts.fontconfig.enable = true;

}
