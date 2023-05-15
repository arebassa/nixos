{ config, pkgs, ... }:

{
  imports = [

    ./1password.nix
    ./insecure-packages.nix
    ./nextdns.nix
    ./system-packages.nix
    ./virtualisation.nix
  ];


}
