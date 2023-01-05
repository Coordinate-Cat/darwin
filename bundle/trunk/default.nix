{ pkgs, ... }:

{
  home.packages = with pkgs; [ trunk ];
}