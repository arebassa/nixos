{ config, pkgs, lib, ... }: {
  imports = [
    # removed due to testing
    # ./kcli.nix
    ./ncspot.nix
    ./neovim.nix
    ./shell.nix
  ];
}
