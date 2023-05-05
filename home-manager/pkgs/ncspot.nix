{ pkgs, ... }: {
  programs = {
    ncspot = {
      enable = true;
      settings = {
        notify = true;
        use_nerdfont = true;
        theme = {
          background = "#2e3436"
          primary = "#eeeeec"
          secondary = "#babdb6"
          title = "#729fcf"
          playing = "#729fcf"
          playing_selected = "#ffffff"
          playing_bg = "#555753"
          highlight = "#8ae234"
          highlight_bg = "#2e3436"
          error = "#fce94f"
          error_bg = "#a40000"
          statusbar = "#eeeeec"
          statusbar_progress = "#729fcf"
          statusbar_bg = "#555753"
          cmdline = "#eeeeec"
          cmdline_bg = "#2e3436"

        };
      };
    };
  };
}
