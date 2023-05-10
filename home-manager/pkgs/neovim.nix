{ pkgs, lib, ... }:
let
  globalconf = import ../../cfg/neovim;
  # shadowenv = pkgs.vimUtils.buildVimPluginFrom2Nix {
  #   name = "shadowenv";
  #   src = pkgs.fetchFromGitHub {
  #     owner = "Arkham";
  #     repo = "shadowenv.vim";
  #     rev = "6422c3a651c3788881d01556cb2a90bdff7bf002";
  #     sha256 = "1lfckdxkd9cl0bagcxwfg0gb84bs2sxxscrwd86yrqyhrvm24hik";
  #   };
  # };

  # Allow installing plugins from GitHub. This will be reusable.
  fromGitHub = rev: ref: repo:
    pkgs.vimUtils.buildVimPluginFrom2Nix {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = ref;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        ref = ref;
        rev = rev;
      };
    };

in {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      (fromGitHub globalconf.shadowenvVimCommit globalconf.shadowenvVimBranch
        "Shopify/shadowenv.vim")
      vim-nix
      vim-wayland-clipboard
      vim-surround
      neoformat
      fzf-vim
      lightline-vim
      # shadowenv
      supertab
      tabular
      vim-commentary
      vim-endwise
      vim-fugitive
      vim-polyglot
      vim-rhubarb
      vim-visualstar
      vim-unimpaired
    ];
    extraConfig = ''
      " Add the following augroup to run Neoformat on BufWritePre:
      augroup fmt
        autocmd!
        autocmd BufWritePre * undojoin | Neoformat
      augroup END

      " YAML documents are required to have a 2 space indentation
      autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

      " set clipboard options
      set clipboard+=unnamedplus

      " Add FZF Key Mapping
      nnoremap <C-o> :Files<CR>

      " Save key mapping for Ctrl-S
      nnoremap <C-S> :write<CR>

      " Save and exit key mapping for Ctrl-X
      nnoremap <C-X> :wq<CR>


    '';

  };
}
