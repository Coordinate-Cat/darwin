{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      # vadimcn.vscode-lldb
      bungcip.better-toml
      svelte.svelte-vscode
      rust-lang.rust-analyzer
      shardulm94.trailing-spaces
      formulahendry.auto-close-tag
      formulahendry.auto-rename-tag
      ms-ceintl.vscode-language-pack-ja

      # default installed extensions
      # github.copilot
      # sainnhe.everforest

    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      # {
      #   # https://www.vsixhub.com/vsix/57230/
      #   name = "everforest";
      #   publisher = "sainnhe";
      #   version = "0.2.1";
      #   sha256 = "836ce947ed4ff7d5a1524fc0151fc8628c49c123e88422db09cdf9708dab80be";
      # }
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
      # {
      #   # https://www.vsixhub.com/vsix/8048/
      #   name = "vscode-lldb";
      #   publisher = "vadimcn";
      #   version = "1.7.4";
      #   sha256 = "5c9c4db3b03cd48612f65d382340f9e5f2506ac3e6b7be65d74ca3de064d9978";
      # }
    ];
    userSettings = {
      # terminal
      "terminal.integrated.fontFamily" = "Hack Nerd Font";
      "terminal.external.osxExec" = "iTerm.app";
      "terminal.integrated.shellIntegration.decorationsEnabled" = "never";

      # workbench
      "workbench.tree.indent" = 8;
      "workbench.colorTheme" = "Everforest Dark";
      "workbench.iconTheme" = "gruvbox-material-icon-theme";

      # theme
      "everforest.highContrast" = true;
      "everforest.darkContrast" = "hard";
      "everforest.darkCursor" = "orange";
      "everforest.darkSelection" = "orange";
      "everforest.darkWorkbench" = "high-contrast";

      # appearance
      "editor.tabSize" = 2;
      "editor.minimap.enabled" = false;
      "editor.inlineSuggest.enabled" = true;
      "editor.stickyScroll.enabled" = true;
      "editor.fontLigatures" = true;
      "editor.renderWhitespace" = "boundary";

      # security
      "security.workspace.trust.untrustedFiles" = "open";

      # others
      "window.zoomLevel" = 0;
      "breadcrumbs.enabled" = false;
      "liveServer.settings.donotShowInfoMsg" = true;

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
