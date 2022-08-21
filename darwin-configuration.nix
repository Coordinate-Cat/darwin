{ config, pkgs, ... }:

{
  services.nix-daemon.enable = true;
  imports = [
    <home-manager/nix-darwin>
    ./darwin/dock.nix
  ];
}