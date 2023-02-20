{ config, pkgs, ... }:
let
shellAliases = {
  # source
  "sz" = "source ~/.zshrc";

  # clear
  "c" = "clear";

  # vim(neovim)
  "vi" = "nvim";
  "vim" = "nvim";

  # home-manager
  "hms" = "home-manager switch";
  "hmp" = "home-manager packages";
  "hmn" = "home-manager news";

  # rm
  "rm" = "rm";
  "rmr" = "rm -rf";

  "md" = "mkdir";

  # cd
  ".." = "cd ..";
  "cfg" = "cd ~/.config";
  "nd" = "cd ~/.config/nixpkgs";
  "ndb" = "cd ~/.config/nixpkgs/bundle";

  # gitui bad credentials
  "badc" = "ssh-add ~/.ssh/github \ && ssh -T git@github.com";

  # git
  "gu" = "badc || gitui";
  "gc" = "git clone";
  "gd" = "git diff";
  "ga" = "git add .";

  # ls(exa combinations)
  "ls1" = "clear && exa -1 --icons";
  "lsa" = "clear && exa -a --icons";
  "lsh" = "clear && exa -h --icons";
  "lsl" = "clear && exa -l --icons";
  "lsr" = "clear && exa -r --icons";
  "lsaa" = "clear && exa -A --icons";
  "lsf" = "clear && exa -F --icons";
  "lsrr" = "clear && exa -R --icons";
  "lss" = "clear && exa -lS --icons";
  "lst" = "clear && exa -lt --icons";
  "fls" = "ls -R | grep ':$' | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'";

  "bundle" = "cd ~/.config/nixpkgs/bundle && ls > ~/.config/nixpkgs/bundle.txt";

  # imgcat
  "img" = "imgcat";

  # neofetch
  "neo" = "neofetch --source ~/.config/nixpkgs/bundle/neofetch/pepe.txt";

  # rg + sk
  "bd" = "cd ~/.config/nixpkgs/bundle && rg --files | sk --preview='bat {} --color=always'";
};
in
{
  programs.bash = {
    enable = true;
    inherit shellAliases;
  };
  programs.zsh = {
    enable = true;
    autocd = false;
    enableAutosuggestions = false;
    enableSyntaxHighlighting = true;
    inherit shellAliases;
    history = {
      extended = true;
      path = "${config.xdg.dataHome}/zsh/.zsh_history";
      save = 1000000;
      size = 1000000;
    };
    initExtra = ''
      [[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

      if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ];
        then . $HOME/.nix-profile/etc/profile.d/nix.sh;
      fi

      # hyperfine
      function hf() {
        hyperfine --warmup 1 'home-manager switch' \
        'home-manager packages' \
        'home-manager news' \
        --export-markdown benchmark.md
      }

      # custom cd(ls after cd)
      function cd() {
        builtin cd "$@" && clear && exa -la --icons
      }

      alias cd="cd"

      # fnm
      eval "$(fnm env --use-on-cd)"

      # cargo
      source "$HOME/.cargo/env"

      [[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
    '';
  };
}
