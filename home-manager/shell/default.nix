{ config, pkgs, lib, ... }:

{
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./dir-env.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./ssh.nix
    # ./wezterm.nix

  ];
}
