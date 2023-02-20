{
  description = "My Home-Manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-21.05-darwin";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager }: {
    nixConfigurations = {
      my-config = nixpkgs.lib.nixosSystem {
        system = "darwin-arm64";
        modules = [
          {
            # Home-Manager の設定ファイルのパスを指定する
            home-manager.users.my-user = {
              # ~/.config/nixpkgs/home.nix に記述した設定ファイルのパスを指定する
              home.file = [ { source = /Users/my-user/.config/nixpkgs/home.nix; destination = ".config/nixpkgs/home.nix"; } ];
            };
          }
        ];
        # Home-Manager を有効にする
        home-manager = nixpkgs.legacyPackages.${system}.home-manager.override {
          # Home-Manager のバージョンを指定する
          version = "21.05";
          # Home-Manager の設定を有効にする
          enable = true;
          # Home-Manager の設定ファイルのパスを指定する
          home.file = [ { source = /Users/my-user/.config/nixpkgs/home.nix; destination = ".config/nixpkgs/home.nix"; } ];
        };
      };
    };
  };
}
