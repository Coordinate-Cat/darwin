{ config, lib, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      ms-ceintl.vscode-language-pack-ja
      svelte.svelte-vscode
    ];
    # ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    #   {
    #     name = "everforest-vscode";
    #     publisher = "sainnhe";
    #     version = "0.2.1";
    #     sha256 = "1l6qa80236alcjnjbg6qgfcs68j98rqw0v1vbfnq4bhscfzqs30p";
    #   }
    # ];
    userSettings = {
      "terminal.integrated.fontFamily" = "Hack Nerd Font";

      "workbench.colorTheme" = "Everforest Dark";
      "everforest.darkContrast" = "hard";
      "everforest.darkCursor" = "orange";
      "everforest.darkSelection" = "orange";
      "everforest.darkWorkbench" = "high-contrast";
      "everforest.highContrast" = true;

      "editor.tabSize" = 2;
      "workbench.tree.indent" = 8;
      "security.workspace.trust.untrustedFiles" = "open";
    };
  };
}