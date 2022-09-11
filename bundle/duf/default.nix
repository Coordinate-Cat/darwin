{ pkgs, ... }:

{
  home.packages = with pkgs; [ duf ];
  # programs.duf.enable = true;
}