{ pkgs, ... }:

{
  programs.home-manager.enable = true;
  home = {
    username = "$USER";
    homeDirectory = "/Users/$USER";
    stateVersion = "22.05";
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  imports = [
    # vim
    ./bundle/neovim

    # git
    ./bundle/git

    # commands
    ./bundle/bat
    ./bundle/exa
    ./bundle/gitui

    # shell
    ./bundle/zsh
    ./bundle/starship

    # font
    ./bundle/nerdfonts
  ];
}