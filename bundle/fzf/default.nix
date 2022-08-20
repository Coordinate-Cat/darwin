{ pkgs, ...}:

{
  home.packages = with pkgs; [ fzf ];
}
