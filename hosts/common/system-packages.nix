{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    wget
    bluez
    dconf
    dconf2nix
    vscode-fhs
  ];
  # ...
}
