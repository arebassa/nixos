{ config, pkgs, ... }:
{

# Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  # Enable swap on luks
  boot.initrd.luks.devices."luks-12c4b859-9520-4875-8176-6d13f659eefb".device = "/dev/disk/by-uuid/12c4b859-9520-4875-8176-6d13f659eefb";
  boot.initrd.luks.devices."luks-12c4b859-9520-4875-8176-6d13f659eefb".keyFile = "/crypto_keyfile.bin";

}