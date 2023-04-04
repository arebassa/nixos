{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    gnomeExtensions.space-bar
    gnomeExtensions.thinkpad-battery-threshold
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.gtile
    gnomeExtensions.caffeine
    gnomeExtensions.user-themes

  ];
  # ...
}
