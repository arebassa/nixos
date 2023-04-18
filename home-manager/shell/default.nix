{ config, pkgs, lib, ... }:

{
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    ./python.nix
    ./ssh.nix
    # ./wezterm.nix

  ];

  programs = { home-manager.enable = true; };

}
