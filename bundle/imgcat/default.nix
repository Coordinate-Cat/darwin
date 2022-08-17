{ pkgs, ...}:

{
  home.packages = with pkgs; [ imgcat ];
  programs.imgcat.enable = true;
}
