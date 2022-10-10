{ pkgs, ... }:

{
  home.packages = with pkgs; [ vimPlugins.nvim-treesitter ];
}