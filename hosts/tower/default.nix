{ config, pkgs, ... }:

{
  imports = [
    # import general system level nix cfg
    ../common/default.nix
    ./configuration.nix
  ];


}
