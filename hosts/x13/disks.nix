{ config, pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

# Setup keyfile
boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
};

# Enable swap on luks
  boot.initrd.luks.devices."luks-8235999d-00ec-46f3-b6b4-383a00529776".device = "/dev/disk/by-uuid/8235999d-00ec-46f3-b6b4-383a00529776";
  boot.initrd.luks.devices."luks-8235999d-00ec-46f3-b6b4-383a00529776".keyFile = "/crypto_keyfile.bin";
}
