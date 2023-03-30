{ pkgs, ... }:
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      return {

        font = wezterm.font 'Berkeley Mono Variable',
        font_size = 18.0,

        cursor_blink_rate = 800,

        -- color_scheme = "Dracula (Official)",
        tab_bar_at_bottom = true,
        use_fancy_tab_bar = true,
        window_decorations = "TITLE | RESIZE"

        config.window_padding = {
          left = 2,
          right = 2,
          top = 0,
          bottom = 0,
      }
}

      }
    '';

  };
}
