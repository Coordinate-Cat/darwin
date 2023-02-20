{
  description = "My Home Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-21.05-darwin";
    home-manager.url = "github:nix-community/home-manager";
  };

  outputs = { self, nixpkgs, home-manager }:
    let
      # Home Manager の設定を定義する
      homeConfigurations = {
        # ユーザー名として使用する任意の文字列を指定する
        okakoki = home-manager.lib.homeManagerConfiguration {
          # Home Manager の設定ファイルの場所を指定する
          config = ./home.nix;
        };
      };
    in {
      # Home Manager の activation script を定義する
      self.home-manager.activationPackage."okakoki" =
        let inputs = { nixpkgs = self.nixpkgs; home-manager = self.home-manager; };
        in self.home-manager.packages.${inputs.system}.okakoki;

      # Home Manager が依存するパッケージを定義する
      packages = if self.home-manager.system == "aarch64-darwin" then {
        darwin = home-manager.lib.darwinSystemPackage {
          system = "aarch64-darwin";
          modules = [
            ./darwin-configuration.nix
          ];
          extraConfig = {
            nix = {
              package = self.nixpkgs;
            };
          };
        };
      } else {
        # macOS 以外の場合の設定
        # ...
      };
    };
}
