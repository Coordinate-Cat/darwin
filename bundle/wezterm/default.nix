{ pkgs, ... }:

{
  home.packages = with pkgs; [ wezterm ];
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm';
      wezterm.on('update-right-status', function(window, pane)
        local date = wezterm.strftime '%a %b %-d %H:%M '

        window:set_right_status(wezterm.format {
          { Text = wezterm.nerdfonts.mdi_clock .. ' ' .. date },
        })
      end)
      return {
        font_size = 14.0,
        font_antialias = "Subpixel",
        font_hinting = "Full",
        font_offset = {
          x = 0,
          y = 0,
        },
        window_decorations = "NONE",
        hide_tab_bar_if_only_one_tab = true,
        initial_cols = 164,
        initial_rows = 46,

        colors = {
          foreground = "#d3c6aa",
          background = "#2b3339",
          cursor_bg = "#d3c6aa",
          cursor_border = "#d3c6aa",
          cursor_fg = "#2b3339",
          selection_bg = "#d3c6aa",
          selection_fg = "#2b3339",
          ansi = {
            "#4b565c",
            "#e67e80",
            "#a7c080",
            "#dbbc7f",
            "#7fbbb3",
            "#d699b6",
            "#83c092",
            "#d3c6aa"
          },
          brights = {
            "#4b565c",
            "#e67e80",
            "#a7c080",
            "#dbbc7f",
            "#7fbbb3",
            "#d699b6",
            "#83c092",
            "#d3c6aa"
          },
        },
      }
    '';
  };
}
