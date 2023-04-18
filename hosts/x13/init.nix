{ config, pkgs, ... }:

{
  imports = [
    # import general system level nix cfg
    ../common/default.nix
  ];

  networking.hostName = "dustin-krysak"; # Define your hostname.
}
