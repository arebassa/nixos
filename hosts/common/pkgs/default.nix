{ config, pkgs, ... }:

{
  imports = [

    ./1password.nix
    ./docker.nix
    ./insecure-packages.nix
    ./nextdns.nix
    ./system-packages.nix
  ];


}
