{ config, pkgs, lib, ... }:

{
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./direnv.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    ./kitty.nix
    ./ssh.nix
    # ./wezterm.nix

  ];
}
