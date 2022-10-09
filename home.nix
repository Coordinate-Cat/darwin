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
    # ./bundle/wezterm
    ./bundle/alacritty

    # editor
    ./bundle/neovim
    ./bundle/vscode

    # git
    ./bundle/git

    # node
    ./bundle/node

    # commands
    ./bundle/bat
    ./bundle/exa
    ./bundle/duf
    ./bundle/fnm
    ./bundle/fzf
    ./bundle/btop
    ./bundle/lima
    ./bundle/navi
    ./bundle/skim
    ./bundle/hexyl
    ./bundle/gitui
    ./bundle/imgcat
    ./bundle/ripgrep
    ./bundle/neofetch
    ./bundle/hyperfine

    # shell
    ./bundle/shell
    ./bundle/starship

    # font
    ./bundle/nerdfonts
  ];
}
