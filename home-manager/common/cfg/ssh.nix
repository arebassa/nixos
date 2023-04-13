{ pkgs, ... }: {

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent ~/.1password/agent.sock
        # AddKeysToAgent yes

      Host github.com
        HostName github.com
        IdentityFile ~/.ssh/id_rsa_temp
        User git
        AddKeysToAgent yes

    '';
  };

}
