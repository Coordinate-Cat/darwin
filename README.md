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
https://youtu.be/1dzgVkgQ5mE

1. https://nixos.org/
2. `sh <(curl -L https://nixos.org/nix/install)`
3. quit Terminal
4. `nix-shell -p nix-info --run "nix-info -m"`
