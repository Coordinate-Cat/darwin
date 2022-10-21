# darwin

![macOS](https://img.shields.io/badge/mac%20os-000000?style=flat-square&logo=apple&color=333)
![](https://img.shields.io/github/languages/code-size/Coordinate-Cat/darwin?color=333&style=flat-square)
![](https://img.shields.io/tokei/lines/github/Coordinate-Cat/darwin?color=333&style=flat-square)
![](https://img.shields.io/github/last-commit/Coordinate-Cat/darwin?color=333&style=flat-square)

This repository is darwin(macos) setup

## Hacking Machine
<img width="1440" alt="スクリーンショット 2022-10-21 23 28 15" src="https://user-images.githubusercontent.com/42393004/197219972-35b6e660-33c2-466d-bb2f-bf6701706b72.png">
<img width="1440" alt="スクリーンショット 2022-10-21 23 25 25" src="https://user-images.githubusercontent.com/42393004/197219451-edd2456f-5e54-49d3-a0d1-e3a48c830c53.png">
<img width="1440" alt="スクリーンショット 2022-10-21 23 34 34" src="https://user-images.githubusercontent.com/42393004/197221435-407a0569-179a-4781-b62d-50a44dee82f2.png">

```
macOS Monterey ver 12.5.1
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

### Error
Error when doing `sh <(curl -L https://nixos.org/nix/install)`
```
error: failed to bootstrap /nix If you enabled FileVault after booting, this is likely a known issue
with macOS that you'll have to reboot to fix. If you didn't enable FV,
though, please open an issue describing how the system that you see
this error on was set up.
```

solution
1. mac system settings > security and privacy > Filevault on/off > mac reboot


## Home-manager [[&#10697;](https://github.com/nix-community/home-manager)]

```
# home-manager
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# nixpkgs
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update

export NIX_PATH=$HOME/.nix-defexpr/channels${NIX_PATH:+:}$NIX_PATH
nix-shell '<home-manager>' -A install
```

## Gitui [[&#10697;](https://github.com/extrawurst/gitui)]

make config file
```
mkdir ~/.ssh
cd ~/.ssh
touch config
vim config
```

write config
```
Host github github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github
```

make ssh-key
```
ssh-keygen -t ecdsa -C "example@gmail.com"
Type `github` in the first question
pbcopy < ~/.ssh/github.pub
ssh-add ~/.ssh/github
ssh -T git@github.com
```

## Install this repository
```
cd ~/.config
rm -rf nixpkgs
git clone git@github.com:Coordinate-Cat/darwin.git nixpkgs

home-manager switch
source ~/.zshrc
```

## ~~Nix-Darwin [[&#10697;](https://github.com/LnL7/nix-darwin)]~~

> **Warning**  
> https://github.com/LnL7/nix-darwin/issues/188

idk yet

```
mkdir ~/.nixpkgs
ln -s ~/.config/nixpkgs/darwin-configuration.nix $HOME/.nixpkgs/darwin-configuration.nix

nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer
./result/bin/darwin-installer

darwin-rebuild switch
```

## iTerm [[&#10697;](https://iterm2.com/)]

Theme: [Everforest hard dark](https://github.com/Coordinate-Cat/darwin/blob/main/bundle/iterm2/Everforest_hard_dark.itermcolors)

## VSCode [[&#10697;](https://code.visualstudio.com/)]

Theme: [Dark Hard High-Contrast](https://github.com/sainnhe/everforest-vscode)

|Extensions|URL|
|:-|:-|
|Nix|https://marketplace.visualstudio.com/items?itemName=bbenoist.Nix|
|Everforest|https://marketplace.visualstudio.com/items?itemName=sainnhe.everforest|

## Rectangle [[&#10697;](https://rectangleapp.com/)]

margin: `20px`

## Fig [[&#10697;](https://fig.io/)]

Settings > Dotfiles > ⋮ > Import Dotfiles

## Wallpaper [[&#10697;](https://unsplash.com/photos/jwTvCQQJXh0)]

```
osascript -e "tell application \"System Events\" to tell every desktop to set picture to \"~/.config/nixpkgs/bundle/wallpaper/wallpaper.jpg\" as POSIX file"
```
`./bundle/wallpaper`

## Reddit [[&#10697;](#)]

Standby...

## Article [[&#10697;](https://lmh.vercel.app/)]

https://lmh.vercel.app/

## Licence [[&#10697;](https://github.com/Coordinate-Cat/darwin/blob/main/LICENSE)]

<img width="100px" src="https://user-images.githubusercontent.com/42393004/185775910-4b7f91d9-c65f-4a2f-a805-9abea15d1fe0.png">


## nvim

```
Command lists
============================
`checkhealth`

```