{ pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "Berkeley Mono Variable";
          style = "Regular";
        };
        size = 18;
      };
    };

  };
}
