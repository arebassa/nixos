{ pkgs, ... }: {

  programs.ssh = {
    enable = true;
    extraConfig = ''
# use 1password to manage ssh keys
Host *
  IdentityAgent ~/.1password/agent.sock
  AddKeysToAgent yes

Host camino
  HostName 64.225.50.102
  User root

Host github.com
  HostName github.com
  IdentityFile ~/.ssh/id_rsa_temp
  User git
  AddKeysToAgent yes
    '';
  };

  # Create ~/.ssh/config file
  # Need to run in the terminal once:
  # ssh-add ~/.ssh/id_rsa
  #  home.file.".ssh/config".text = ''
  # use 1password to manage ssh keys
  #     Host *
  #       IdentityAgent ~/.1password/agent.sock
  # AddKeysToAgent yes

  #     Host github.com
  #       HostName github.com
  #       IdentityFile ~/.ssh/id_rsa_temp
  #       User git
  #       AddKeysToAgent yes
  #  '';

}
