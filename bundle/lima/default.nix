{ pkgs, ... }:

{
  home.packages = with pkgs; [ lima ];
}