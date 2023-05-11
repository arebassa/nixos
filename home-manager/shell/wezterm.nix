{ pkgs, ... }:

# https://wezfurlong.org/wezterm/colorschemes/b/index.html#black-metal-nile-base16
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      return {
        color_scheme = 'Afterglow',

        -- font = wezterm.font 'Berkeley Mono Variable',
        font = wezterm.font 'FiraCode Nerd Font',
        font_size = 18.0,

        cursor_blink_rate = 800,

        tab_bar_at_bottom = true,
        use_fancy_tab_bar = true,
        window_decorations = "TITLE | RESIZE",
      }


    '';

  };
}
