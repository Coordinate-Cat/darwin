# darwin
darwin(macos) setup

```
macOS Monterey ver 12.5
MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)
2.3GHz DualCore IntelCore i5
16GB 2133 MHz LPDDR3
Intel Iris Plus Graphics 640 1536MB
```

## Nix [[&#10697;](https://nixos.org/)]

```
sh <(curl -L https://nixos.org/nix/install)

Quit Terminal

nix-shell -p nix-info --run "nix-info -m"
```
## Home-manager [[&#10697;](https://github.com/nix-community/home-manager)]

```
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
nix-shell '<home-manager>' -A install
```

## Nix-Darwin [[&#10697;](https://github.com/LnL7/nix-darwin)]

```
mkdir ~/.nixpkgs
ln -s ~/.config/nixpkgs/darwin-configuration.nix $HOME/.nixpkgs/darwin-configuration.nix

nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer

darwin-rebuild switch
```

## Gitui [[&#10697;](https://github.com/extrawurst/gitui)]

```
ssh-keygen -t ecdsa -C "example@gmail.com"
Type `github` in the first question
pbcopy < ~/.ssh/github.pub
ssh-add ~/.ssh/github
ssh -T git@github.com
```

## Fig [[&#10697;](https://fig.io/)]

Settings > Dotfiles > ⋮ > Import Dotfiles

## Wallpaper [[&#10697;](https://unsplash.com/photos/jwTvCQQJXh0)]
TODO: default command?

`./bundle/wallpaper`