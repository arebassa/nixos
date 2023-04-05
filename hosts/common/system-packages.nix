{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    wget
    xclip
    bluez
    dconf
    dconf2nix
    vscode-fhs
    ripgrep
    tailscale
    oh-my-posh
    fish
    wezterm
    htop
    age
    fd
    tree
    git
    gnumake
    git-crypt
    gnupg
    fzf
  ];
  # ...
  # Needed for vscode
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
