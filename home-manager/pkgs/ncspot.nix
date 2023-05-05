{ pkgs, ... }: {
  programs = {
    ncspot = {
      enable = true;
      settings = {
        notify = true;
        use_nerdfont = true;
        theme = {
          background = "#1c1c1c";
          primary = "#d0d0d0";
          secondary = "#bfbfbf";
          title = "#80c970";
          playing = "#80c970";
          playing_selected = "#a0ffa0";
          playing_bg = "#1c1c1c";
          highlight = "#d0d0d0";
          highlight_bg = "#484848";
          error = "#d0d0d0";
          error_bg = "#ff8080";
          statusbar = "#1c1c1c";
          statusbar_progress = "#80c970";
          statusbar_bg = "#80c970";
          cmdline = "#d0d0d0";
          cmdline_bg = "#1c1c1c";
          search_match = "#ff8080";
        };
      };
    };
  };
}
