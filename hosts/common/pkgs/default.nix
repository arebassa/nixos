{ config, pkgs, ... }:

{
  imports = [

    ./1password.nix
    ./direnv.nix
    ./docker.nix
    ./insecure-packages.nix
    ./nextdns.nix
    ./system-packages.nix
  ];


}
