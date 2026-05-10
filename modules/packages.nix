{ config, pkgs, pkgs-2211, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    htop
    lsd
    kitty
    mkalias
    fastfetch
    wget
    btop
    tree
    pkgs-2211.openvpn
    nerd-fonts.iosevka
    nasm
    freerdp
    osslsigncode
    pkgsCross.mingwW64.buildPackages.gcc
    pkgsCross.mingwW64.openssl.dev
    pkgsCross.mingwW64.openssl.out
  ];
}
