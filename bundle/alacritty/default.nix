{ pkgs, ...}:

{
  home.packages = with pkgs; [ alacritty ];
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        decorations = "buttonless";
        opacity = 0.8;
        history = 10000;
        dimensions = {
          columns = 300;
          lines = 20;
        };
        # vertical_chars = 50;
        # horizontal_chars = 200;
        position = {
          x = 0;
          y = 0;
        };
        # starting_x_offset = 0;
        # starting_y_offset = 0;
      };
      font = {
        normal.family = "Hack Nerd Font";
        bold.family = "Hack Nerd Font";
        italic.family = "Hack Nerd Font";
        bold_italic.family = "Hack Nerd Font";
        size = 12.0;
      };
      shell = {
        program = "${pkgs.zsh}/bin/zsh";
        args = [ "--login" ];
      };
      # everforest schemes(dark_hard)
      colors = {
        # Default colors
        primary = {
          background = "#2b3339";
          foreground = "#d3c6aa";
        };

        # Normal colors
        normal = {
          black =   "#4b565c";
          red =     "#e67e80";
          green =   "#a7c080";
          yellow =  "#dbbc7f";
          blue =    "#7fbbb3";
          magenta = "#d699b6";
          cyan =    "#83c092";
          white =   "#d3c6aa";
        };

        # Bright colors
        bright = {
          black =   "#4b565c";
          red =     "#e67e80";
          green =   "#a7c080";
          yellow =  "#dbbc7f";
          blue =    "#7fbbb3";
          magenta = "#d699b6";
          cyan =    "#83c092";
          white =   "#d3c6aa";
        };
      };
    };
  };
}
