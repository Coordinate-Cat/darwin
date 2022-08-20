# darwin
darwin(macos) setup

```
macOS Monterey ver 12.5
MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)
2.3GHz DualCore IntelCore i5
16GB 2133 MHz LPDDR3
Intel Iris Plus Graphics 640 1536MB
```

## Nix

1. https://nixos.org/
2. `sh <(curl -L https://nixos.org/nix/install)`
3. Quit Terminal
4. `nix-shell -p nix-info --run "nix-info -m"`

## Gitui

1. `ssh-keygen -t ecdsa -C "example@gmail.com"`
2. Type `github` in the first question.
3. `pbcopy < ~/.ssh/github.pub`
4. `ssh-add ~/.ssh/github`
5. `ssh -T git@github.com`

## fig

1. https://fig.io/

## Wallpaper

1. https://unsplash.com/photos/jwTvCQQJXh0
2. `./bundle/wallpaper`