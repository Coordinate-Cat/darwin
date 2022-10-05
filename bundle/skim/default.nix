{ pkgs, ... }:

{
  home.packages = with pkgs; [ skim ];
  programs.skim.enable = true;
}