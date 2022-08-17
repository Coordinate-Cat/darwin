{ pkgs, ...}:

{
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Hack" ]; })
  ];
  fonts.fontconfig.enable = true;
}