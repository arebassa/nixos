{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    ### Terminal
    gptcommit
    imagemagick_light
    sshfs
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
    rclone
    ### Bluetooth
    bluez
    ### Cloud
    kubectl
    kubernetes-
    eksctl
    terraform
    ### Dev
    vscode
    vscode-extensions.ms-vscode-remote.remote-ssh
    gitkraken
    git
    just
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
    todoist-electron
    flameshot
    # insync-v3 - broken package
    ### Communication
    element-desktop
    slack
    rocketchat-desktop
  ];
  # ...
}
