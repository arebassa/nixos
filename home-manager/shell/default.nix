{ config, pkgs, lib, ... }:

{
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./delta.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    ./ssh.nix
    # ./wezterm.nix

  ];
}
