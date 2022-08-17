{ pkgs, ... }:

{
  home.packages = with pkgs; [ starship ];
  programs.starship.enable = true;
  xdg.configFile."starship.toml".source = ./starship.toml;
}