{ config, pkgs, ... }:

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
    # terminal
    ./bundle/iterm2
    ./bundle/alacritty

    # vim
    ./bundle/neovim

    # git
    ./bundle/git

    # commands
    ./bundle/fzf
    ./bundle/bat
    ./bundle/exa
    ./bundle/gitui
    ./bundle/imgcat
    ./bundle/neofetch

    # shell
    ./bundle/shell
    ./bundle/starship

    # font
    ./bundle/nerdfonts
  ];
}