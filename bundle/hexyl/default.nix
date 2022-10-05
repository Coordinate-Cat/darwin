{ pkgs, ... }:

{
  home.packages = with pkgs; [ hexyl ];
}