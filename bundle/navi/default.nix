{ pkgs, ... }:

{
  home.packages = with pkgs; [ navi ];
  programs.navi.enable = true;
}