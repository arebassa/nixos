{ config, pkgs, lib, ... }:

{
  imports = [
    ./go.nix
    ./python.nix
    ./npm.nix

  ];

}
