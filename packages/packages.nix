{ pkgs, ... }:
{
  home.packages = with pkgs [
    hello
    firefox
    wget  
    vscodium  
    neovim
    git
    rofi
    discord
    alacritty
    fish
    steam
    corefonts
    nerdfonts
  ];
}
