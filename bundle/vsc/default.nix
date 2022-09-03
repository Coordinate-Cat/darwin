{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-ceintl.vscode-language-pack-ja
      svelte.svelte-vscode

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

      # editor
      "editor.tabSize" = 2;
      "editor.minimap.enabled" = false;

      # workbench
      "workbench.tree.indent" = 8;

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