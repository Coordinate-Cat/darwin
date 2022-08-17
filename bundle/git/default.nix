{ pkgs, ...}:

{
  home.packages = with pkgs; [ git ];
  programs.git = {
    enable = true;
    delta = {
      enable = true;
      options = {
        line-numbers = true;
        navigate = true;
        side-by-side = true;
      };
    };
    ignores = [
      "*~"
      "*.swp"
      ".DS_Store"
      ".direnv"
    ];
    userName = "Coordinate-Cat";
    userEmail = "tetrapasta02@gmail.com";
  };
}
