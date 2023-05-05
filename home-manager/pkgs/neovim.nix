{ pkgs, ... }:
let
  shadowenv = pkgs.vimUtils.buildVimPluginFrom2Nix {
    name = "shadowenv";
    src = pkgs.fetchFromGitHub {
      owner = "Arkham";
      repo = "shadowenv.vim";
      rev = "6422c3a651c3788881d01556cb2a90bdff7bf002";
      sha256 = "1lfckdxkd9cl0bagcxwfg0gb84bs2sxxscrwd86yrqyhrvm24hik";
    };
  };
in {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      vim-surround
      neoformat
      fzf-vim
      lightline-vim
      shadowenv
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

      " Add FZF Key Mapping
      nnoremap <C-o> :Files<CR>
      " Add Find in File shortcut
      nnoremap <C-f> :noh<CR>/<C-R>=@/<CR><CR>


    '';

  };
}
