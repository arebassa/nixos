{ config, pkgs, ... }:
# let
#   # gitConfig = import ./cfg/git.nix { inherit config; };
# in
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dustin";
  home.homeDirectory = "/home/dustin";
  # Profile Picture for gnome
  home.file.face = {
    target = ".face";
    source = ../home/.face;
  };
  # Packages and settings installed to the user profile.
  imports = [ ./pkgs ./srvcs ./autostart ];
  fonts.fontconfig.enable = true;
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
}
