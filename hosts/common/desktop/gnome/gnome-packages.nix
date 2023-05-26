{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    ### Gnome
    gnome.gnome-tweaks
    gnome.gnome-keyring
    dconf
    dconf2nix
    # gnomeExtensions.thinkpad-battery-threshold
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.pop-shell
    gnomeExtensions.caffeine
    # gnomeExtensions.user-themes
    gnomeExtensions.appindicator
    gnome.adwaita-icon-theme
  ];
  # ...
}
