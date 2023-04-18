{ config, pkgs, ... }:

{
  imports = [
    # import general system level nix cfg
    ../common/default.nix
    # import system specific system level nix cfg
    ./system-packages.nix
    # System Services
    ./services.nix
  ];
}
