{ pkgs, ... }:

{
  home.packages = with pkgs; [ gitui ];
  programs.gitui.enable = true;
}