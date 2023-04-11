{ pkgs, ... }: {

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent ~/.1password/agent.sock

      Host github.com
        HostName github.com
        #IdentityFile ~/.ssh/id_rsa_temp
        User git
        AddKeysToAgent yes

    '';
  };

  {
  home.file.".ssh".config = {
    source = "~/.ssh";
    mode = "0700";
  };

  home.file.".ssh/config".config = {
    source = "~/.ssh/config";
    mode = "0600";
  };
}
