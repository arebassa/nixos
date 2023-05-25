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

  programs.keychain = {
    enable = true;
    enableFishIntegration = true;
    agents = [ "pkcs11" "secrets" "ssh" ];
    keys = [ "id_rsa" ];
  };

  services.gnome-keyring = {
    enable = true;
    components = [ "pkcs11" "secrets" "ssh" ];
  };
}
