{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    ### Gnome
    gnome.gnome-tweaks
    gnome.gnome-keyring
    dconf
    dconf2nix
    gnomeExtensions.space-bar
    # gnomeExtensions.thinkpad-battery-threshold
    gnomeExtensions.grand-theft-focus
    gnomeExtensions.rounded-window-corners
    gnomeExtensions.pop-shell
    gnomeExtensions.caffeine
    # gnomeExtensions.user-themes
    gnomeExtensions.appindicator
    gnome.dconf-editor
    gnome.adwaita-icon-theme
    ### Terminal
    darktile # just testing
    imagemagick_light
    coreutils
    wget
    xclip
    ripgrep
    htop
    age
    fd
    tree
    gnupg
    fzf
    _1password
    google-drive-ocamlfuse
    gparted
    ntfs3g
    rclone
    ### Bluetooth
    bluez
    ### Cloud
    kubectl
    kubernetes-helm
    terraform
    ### Dev
    vscode
    gitkraken
    git
    gnumake
    git-crypt
    shadowenv
    difftastic
    nixfmt
    doppler
    gh
    nodejs-19_x
    ### Networking
    tailscale
    ### Shell
    fish
    starship
    appimage-run
    ### Backup
    restic
    autorestic
    ### General GUI
    _1password-gui
    google-chrome
    microsoft-edge-beta
    todoist-electron
    flameshot
    teamviewer
    zoom-us
    ### Communication
    element-desktop
    slack
    rocketchat-desktop
  ];
  # ...
}
