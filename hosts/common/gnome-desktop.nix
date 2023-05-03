{ config, pkgs, ... }:
# Create this folder for gnome login photo
let dbDir = "/etc/dconf/db/gdm.d";
in {
  # Create this folder for gnome login photo
  systemd.services.createDir = {
    description = "Create dconf directory for gdm";
    wantedBy = [ "sysinit.target" ];
    serviceConfig.Type = "oneshot";
    serviceConfig.ExecStartPre = ''
      # enable write permissions on /etc/dconf
      mount -o remount,rw /etc/dconf
      # create new directory for gdm
      mkdir -p ${dbDir}
      # restore read-only permissions on /etc/dconf
      mount -o remount,ro /etc/dconf
    '';
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable flatpak
  # Not really used other than for a work around with VScode.
  services.flatpak.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Enable dconf
  programs.dconf.enable = true;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable Bluetooth
  # High quality BT calls
  hardware.bluetooth = {
    enable = true;
    # conflicts with Wireplumber
    # hsphfpd = { enable = true; };
  };
  # ensure gnome-settings-daemon udev rules are enabled - appindicator
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

  };
}
