{ config, pkgs, ... }:

{
  imports = [ ./1password.nix ./system-packages.nix ./docker.nix ];
}
