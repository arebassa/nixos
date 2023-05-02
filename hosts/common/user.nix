{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dustin = {
    isNormalUser = true;
    description = "Dustin Krysak";
    extraGroups =
      [ "networkmanager" "wheel" "docker" "onepassword" "onepassword-cli" ];
    shell = "/etc/profiles/per-user/dustin/bin/fish";
  };

  # Profile Picture for gnome
  home.file.".face".source = ../../files/home/.face;
}
