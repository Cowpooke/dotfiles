{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
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
