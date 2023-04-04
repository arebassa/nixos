{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    wget
    bluez
    dconf
    vscode-fhs
  ];
  # ...
}
