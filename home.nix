{ pkgs, ... }:

{
  programs.home-manager.enable = true;
  programs.gitui.enable = true;
  home = {
    username = "$USER";
    homeDirectory = "/Users/$USER";
    stateVersion = "22.05";
    # sessionVariables = {
    #   EDITOR = "nvim";
    # };
  };

  imports = [
    # vim
    # ./bundle/neovim

    # git
    # ./bundle/git

    # commands
    # ./bundle/bat
    ./bundle/exa

    # shell
    ./bundle/zsh
    # ./bundle/nushell
    # ./bundle/starship
  ];
}