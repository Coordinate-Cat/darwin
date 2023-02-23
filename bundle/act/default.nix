{ pkgs, ...}:

{
  home.packages = with pkgs; [ act ];
}
