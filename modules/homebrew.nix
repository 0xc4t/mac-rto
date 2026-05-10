{ config, pkgs, ... }:

{
  nix-homebrew.enable = true;
  nix-homebrew.enableRosetta = true;
  nix-homebrew.user = "0xc4t";
  nix-homebrew.autoMigrate = true;

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "anomalyco/tap"
      "FelixKratz/formulae"
      "koekeishiya/formulae"
      "nikitabobko/tap"
    ];

    brews = [
      "clang-format"
      "git-lfs"
      "go"
      "hydra"
      "lua"
      "mingw-w64"
      "openjdk"
      "readline"
      "scrcpy"
      "spicetify-cli"
      "tmux"
      "wget"
      "mole"
    ];

    casks = [
      "font-iosevka-nerd-font"
      "font-jetbrains-mono-nerd-font"
      "telegram-desktop"
      "anydesk"
      "thunderbird"
      "obsidian"
      "burp-suite"
    ];
  };
}
