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
    ./bundle/nvim
    # ./bundle/vscode

    # git
    ./bundle/git

    # node
    ./bundle/node

    # plugins
    ./bundle/bat
    ./bundle/exa
    ./bundle/duf
    ./bundle/fnm
    ./bundle/fzf
    ./bundle/btop
    ./bundle/lima
    ./bundle/navi
    ./bundle/skim
    ./bundle/yarn
    ./bundle/hexyl
    ./bundle/gitui
    ./bundle/tauri
    ./bundle/trunk
    ./bundle/eslint
    ./bundle/imgcat
    ./bundle/ripgrep
    ./bundle/neofetch
    # ./bundle/onefetch
    ./bundle/hyperfine

    # nvim plugins
    ./bundle/treesitter
    ./bundle/rnix

    # shell
    ./bundle/shell
    ./bundle/starship

    # font
    ./bundle/nerdfonts
  ];
}
