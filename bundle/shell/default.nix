{ config, pkgs, ... }:
let
shellAliases = {
  # source
  "sz" = "source ~/.zshrc";

  # clear
  "c" = "clear";

  # vim(neovim)
  "vi" = "nvim";
  "vim" = "nvim";

  # home-manager
  "hms" = "home-manager switch";
  "hmp" = "home-manager packages";
  "hmn" = "home-manager news";

  # cd
  ".." = "cd ..";
  "cfg" = "cd ~/.config";
  "nd" = "cd ~/.config/nixpkgs";
  "ndb" = "cd ~/.config/nixpkgs/bundle";

  # git
  "gc" = "git clone";
  "gd" = "git diff";
  "ga" = "git add .";

  # ls(exa combinations)
  "ls1" = "clear && exa -1 --icons";
  "lsa" = "clear && exa -a --icons";
  "lsh" = "clear && exa -h --icons";
  "lsl" = "clear && exa -l --icons";
  "lsr" = "clear && exa -r --icons";
  "lsaa" = "clear && exa -A --icons";
  "lsf" = "clear && exa -F --icons";
  "lsrr" = "clear && exa -R --icons";
  "lss" = "clear && exa -lS --icons";
  "lst" = "clear && exa -lt --icons";

  # imgcat
  "img" = "img";
};
in
{
  programs.bash = {
    enable = true;
    inherit shellAliases;
  };
  programs.zsh = {
    enable = true;
    autocd = false;
    enableAutosuggestions = false;
    enableSyntaxHighlighting = true;
    inherit shellAliases;
    history = {
      extended = true;
      path = "${config.xdg.dataHome}/zsh/.zsh_history";
      save = 1000000;
      size = 1000000;
    };
    initExtra = ''
      if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ];
        then . $HOME/.nix-profile/etc/profile.d/nix.sh;
      fi

      # custom cd(ls after cd)
      function cd() {
        builtin cd "$@" && clear && exa -la --icons
      }
      alias cd="cd"
    '';
  };
}