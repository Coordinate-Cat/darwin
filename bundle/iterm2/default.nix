{ pkgs, ...}:

{
  home.packages = with pkgs; [ iterm2 ];
  programs.imgcat.enable = true;
}
