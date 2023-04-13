{ config, pkgs, lib, ... }:

{
  imports = [
    ./bash.nix
    ./encryption.nix
    ./fish.nix
    ./git.nix
    # ./gnome.nix
    ./ncspot.nix
    ./neovim.nix
    ./ssh.nix
    # ./vscode.nix
    ./wezterm.nix

  ];

  programs = { home-manager.enable = true; };
  fonts.fontconfig.enable = true;

}
