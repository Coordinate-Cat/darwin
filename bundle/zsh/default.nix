{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    # autocd = false;
    # enableAutosuggestions = false;
    # enableSyntaxHighlighting = true;
    history = {
      extended = true;
      path = "${config.xdg.dataHome}/zsh/.zsh_history";
      save = 1000000;
      size = 1000000;
    };
    shellAliases = {
      # source
      "sz" = "source ~/.zshrc";

      # vim
      # "vi" = "nvim";
      # "vim" = "nvim";

      # home-manager
      "hms" = "home-manager switch";
      "hmp" = "home-manager packages";

      # cd
      ".." = "cd ..";
      "home" = "cd ~";
      "nd" = "cd ~/.config/nixpkgs";
      "c" = "clear";

      # git
      "gc" = "git clone";
      "gd" = "git diff";

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
    };
    initExtra = ''
      # custom cd(ls after cd)
      function cd() {
        builtin cd "$@" && clear && exa -la --icons
      }
      alias cd="cd"
    '';
  };
}
