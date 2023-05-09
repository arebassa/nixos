{ config, pkgs, ... }:

{
  imports = [

    ./etc_profile.nix
    ./user.nix
  ];


}
