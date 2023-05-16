{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dustin = {
    isNormalUser = true;
    description = "Dustin Krysak";
    extraGroups =
      [ "networkmanager" "wheel" "docker" "onepassword" "onepassword-cli" "qemu" "libvirt"];
    shell = "/etc/profiles/per-user/dustin/bin/fish";
  };
}
