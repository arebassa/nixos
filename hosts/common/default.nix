{ config, pkgs, ... }:

{
  imports = [
    ./pkgs/1password.nix
    ./pkgs/docker.nix
    ./pkgs/insecure-packages.nix
    ./pkgs/nextdns.nix
    ./pkgs/system-packages.nix

    ./gnome-desktop.nix
    ./user.nix
  ];

  # Enable Nix/Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "America/Vancouver";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_CA.UTF-8";

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Enable Tailscale
  services.tailscale.enable = true;

  # Enable Teamviewer
  services.teamviewer.enable = true;
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

}
