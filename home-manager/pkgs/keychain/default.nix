{ pkgs, ... }:

{
  programs.keychain = {
    enable = true;
    enableFishIntegration = true;
    agents = [ "ssh" ];
    keys = [ "id_rsa" ];
  };
}
