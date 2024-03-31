{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
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
