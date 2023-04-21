{ pkgs, ... }:

{
  programs.gpg = { enable = true; };
  # programs.ssh = { startAgent = true; };
  services.gpg-agent = {
    enable = true;
    enableFishIntegration = true;
    # May not be needed. Testing
    # enableSshSupport = true;
  };
  services.gnome-keyring = {
    enable = true;
    components = [ "pkcs11" "secrets" "ssh" ];
  };
}
