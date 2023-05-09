{ config, pkgs, ... }:

{
  imports = [
    ./cfg
    ./desktop/gnome
    ./pkgs
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

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
  };

  # Systemd timer to sync drive
  systemd.timers."rclone-bisync" = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnBootSec = "10min";
      OnUnitActiveSec = "1h";
      Unit = "rclone-bisync.service";
    };
  };

  systemd.services."rclone-bisync" = {
    script = ''
      exec su - dustin -c '/usr/bin/rclone bisync --drive-skip-dangling-shortcuts --drive-export-formats link.html /home/dustin/Documents/Sysdig/customers sysdig:/_Customers'
    '';
    serviceConfig = { Type = "oneshot"; };
  };

}
