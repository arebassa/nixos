{ pkgs, ... }:

# https://wezfurlong.org/wezterm/colorschemes/b/index.html#black-metal-nile-base16
{
  programs.wezterm = {
    enable = true;
    extraConfig = ''
local adwaita_dark = {
  -- Background and foreground colors
  foreground = "rgb(236, 237, 239)",
  background = "rgb(38, 38, 38)",

  -- Normal colors
  colors = {
    black = "rgb( 46,  52,  54)",
    red = "rgb(204,   0,   0)",
    green = "rgb( 78, 154,   6)",
    yellow = "rgb(196, 160,   0)",
    blue = "rgb( 52, 101, 164)",
    magenta = "rgb(117,  80, 123)",
    cyan = "rgb(  6, 152, 154)",
    white = "rgb(211, 215, 207)"
  },

  -- Bright colors
  bright_colors = {
    black = "rgb( 85,  87,  83)",
    red = "rgb(239,  41,  41)",
    green = "rgb(138, 226,  52)",
    yellow = "rgb(252, 233,  79)",
    blue = "rgb(114, 159, 207)",
    magenta = "rgb(173, 127, 168)",
    cyan = "rgb( 52, 226, 226)",
    white = "rgb(238, 238, 236)"
  },

  -- Cursor color
  cursor_bg = "rgb(211, 215, 207)",
  cursor_fg = "rgb( 46,  52,  54)",

  -- Selection color
  selection_bg = "rgb(255, 255, 255)",
  selection_fg = "rgb( 46,  52,  54)",

  -- Border color
  border = "rgb(211, 215, 207)",

  -- Tabs colors
  tab_bar_bg = "rgb( 38,  38,  38)",
  tab_inactive_bg = "rgb( 60,  62,  63)",
  tab_inactive_fg = "rgb(211, 215, 207)",
  tab_active_bg = "rgb( 85,  87,  83)",
  tab_active_fg = "rgb(211, 215, 207)"
}

return {
  color_scheme = "Adwaita Dark",
  color_schemes = {
    ["Adwaita Dark"] = adwaita_dark
  },
  font = wezterm.font 'Berkeley Mono Variable',
  font_size = 18.0,

  cursor_blink_rate = 800,

  -- color_scheme = "Dracula (Official)",
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = true,
  window_decorations = "TITLE | RESIZE",
}


    '';

  };
}
