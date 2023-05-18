{ pkgs, ... }: {
  # ...
  environment.systemPackages = with pkgs; [
    ### Terminal
    gptcommit
    dig
    xorg.xkill
    hugo
    wl-clipboard
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
    ### Bluetooth
    bluez
    ### Cloud
    vultr-cli
    kubectl
    kubecolor
    kubernetes-helm
    eksctl
    awscli2
    aws-iam-authenticator
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
    xmind
    firefox
    google-chrome
    todoist-electron
    flameshot
    tuba
    tootle

    # insync-v3 - broken package
    ### Communication
    element-desktop
    slack
    rocketchat-desktop
  ];
  # ...
}
