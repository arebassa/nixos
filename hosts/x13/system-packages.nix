{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    gnomeExtensions.space-bar
  ];
  # ...
}
