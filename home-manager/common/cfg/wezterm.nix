{ pkgs, ... }:

# https://wezfurlong.org/wezterm/colorschemes/b/index.html#black-metal-nile-base16
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      function get_appearance()
        if wezterm.gui then
          return wezterm.gui.get_appearance()
        end
        return 'Dark'
      end

      function scheme_for_appearance(appearance)
        if appearance:find 'Dark' then
          return 'Black Metal (Nile) (base16)'
        else
          return 'Black Metal (Nile) (base16)'
        end
      end
      return {

        font = wezterm.font 'Berkeley Mono Variable',
        font_size = 18.0,

        cursor_blink_rate = 800,

        -- color_scheme = "Dracula (Official)",
        tab_bar_at_bottom = true,
        use_fancy_tab_bar = true,
        window_decorations = "TITLE | RESIZE",

      color_scheme = scheme_for_appearance(get_appearance()),


      }

    '';

  };
}
