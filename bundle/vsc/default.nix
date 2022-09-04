{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-ceintl.vscode-language-pack-ja
      svelte.svelte-vscode
      formulahendry.auto-close-tag
      formulahendry.auto-rename-tag
      bungcip.better-toml
      shardulm94.trailing-spaces
      rust-lang.rust-analyzer

      # default installed extensions
      # github.copilot

    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        # https://www.vsixhub.com/vsix/57230/
        name = "everforest";
        publisher = "sainnhe";
        version = "0.2.1";
        sha256 = "836ce947ed4ff7d5a1524fc0151fc8628c49c123e88422db09cdf9708dab80be";
      }
      {
        # https://www.vsixhub.com/vsix/73731/
        name = "gruvbox-material-icon-theme";
        publisher = "jonathanharty";
        version = "1.1.4";
        sha256 = "2865cc8f59a65e93ad8eefe08e0af7ff666ef5d2fa317494821980ae77bfabf5";
      }
      {
        # https://www.vsixhub.com/vsix/1950/
        name = "liveserver";
        publisher = "ritwickdey";
        version = "5.7.9";
        sha256 = "c3409848439d96dc0c1739b96613b14abc6a435cb8fa02df07c2fe105160cc37";
      }
      {
        # https://www.vsixhub.com/vsix/32677/
        name = "tauri-vscode";
        publisher = "tauri-apps";
        version = "0.1.6";
        sha256 = "46ce91c29b9e567282fe0c39dad26cba85b00a0571fc7c8b268726b23d318ba6";
      }
    ];
    userSettings = {
      # font
      "terminal.integrated.fontFamily" = "Hack Nerd Font";

      # theme
      "workbench.colorTheme" = "Everforest Dark";
      "everforest.darkContrast" = "hard";
      "everforest.darkCursor" = "orange";
      "everforest.darkSelection" = "orange";
      "everforest.darkWorkbench" = "high-contrast";
      "everforest.highContrast" = true;
      "workbench.iconTheme" = "gruvbox-material-icon-theme";

      # appearance
      "editor.tabSize" = 2;
      "editor.minimap.enabled" = false;
      "editor.inlineSuggest.enabled" = true;
      "editor.stickyScroll.enabled" = true;
      "editor.renderWhitespace" = "boundary";
      "workbench.tree.indent" = 8;
      "breadcrumbs.enabled" = false;
      "liveServer.settings.donotShowInfoMsg" = true;

      # security
      "security.workspace.trust.untrustedFiles" = "open";

      # copilot
      # "enable-proposed-api" = ["github.copilot"];
      # "github.copilot.enable" = {
      #   "*" = true;
      #   "yaml" = false;
      #   "plaintext" = false;
      #   "markdown" = false;
      # };
    };
  };
}