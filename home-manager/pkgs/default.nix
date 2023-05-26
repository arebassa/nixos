{ config, pkgs, lib, ... }: {
  imports = [

    ./bash
    ./dconf
    ./fish
    ./fonts
    ./git
    ./go
    ./gpg
    # removed due to testing
    # ./kcli
    ./keychain
    ./ncspot
    ./neovim
    ./npm
    ./python
    ./ssh
    ./terminal

  ];
}
