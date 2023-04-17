{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    ### Gnome
    gnome.gnome-tweaks
    gnome.gnome-keyring
    dconf
    dconf2nix
    gnomeExtensions.space-bar
    gnomeExtensions.thinkpad-battery-threshold
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.pop-shell
    gnomeExtensions.caffeine
    gnomeExtensions.user-themes

    ### Terminal
    wget
    xclip
    ripgrep
    htop
    age
    fd
    tree
    gnupg
    fzf
    exa
    dust
    _1password

    ### Bluetooth
    bluez

    ### Dev
    vscode-fhs
    gitkraken
    git
    gnumake
    git-crypt
    shadowenv
    difftastic
    nixfmt
    doppler
    gh

    ### Networking
    tailscale
    nextdns

    ### Shell
    fish
    starship
    # wezterm

    ### Backup
    restic
    autorestic

    ### General GUI
    _1password-gui
    google-chrome

    ### Communication
    element-desktop
    zoom-us
    slack

  ];
  # ...
}
