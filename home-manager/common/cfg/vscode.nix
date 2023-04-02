{ pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
    #    extensions = with pkgs.vscode-extensions; [
    #      editorconfig.editorconfig
    #      yzhang.markdown-all-in-one
    #      shd101wyy.markdown-preview-enhanced
    #      davidanson.vscode-markdownlint
    #      shardulm94.trailing-spaces
    #      redhat.vscode-
    #      piousdeer.adwaita-theme
    #      oderwat.indent-rainbow
    #      naumovs.color-highlight
    #      ms-vscode-remote.remote-ssh
    #      ms-kubernetes-tools.vscode-kubernetes-tools
    #      ms-azuretools.vscode-docker
    #      mhutchie.git-graph
    #      hashicorp.terraform
    #      golang.go
    #      github.vscode-pull-request-github
    #      github.copilot
    #      coenraads.bracket-pair-colorizer-2
    #      codezombiech.gitignore
    #      foxundermoon.shell-format
    #      brettm12345.nixfmt-vscode
    #      bungcip.better-toml
    #      bbenoist.nix
    #      _1Password.op-vscode
    #   ];
  };

}
