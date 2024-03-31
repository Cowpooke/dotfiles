{ config, pkgs, ... }:

{

  imports =
    [
      ./hardware-configuration.nix
      ./sysconf
    ];

  system.stateVersion = "23.11";

  time.timeZone = "Asia/Jakarta";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "id_ID.UTF-8";
    LC_IDENTIFICATION = "id_ID.UTF-8";
    LC_MEASUREMENT = "id_ID.UTF-8";
    LC_MONETARY = "id_ID.UTF-8";
    LC_NAME = "id_ID.UTF-8";
    LC_NUMERIC = "id_ID.UTF-8";
    LC_PAPER = "id_ID.UTF-8";
    LC_TELEPHONE = "id_ID.UTF-8";
    LC_TIME = "id_ID.UTF-8";
  };

  services.xserver = {
    enable = true;
    libinput.enable = true;
    layout = "us";
    xkbVariant = "";
    displayManager = {
      lightdm.enable = true;
      autoLogin.enable = true;
      autoLogin.user = "hilmy";
    };
    desktopManager = {
      cinnamon.enable = true;
    };
    displayManager.defaultSession = "cinnamon";
  };

  users.users.hilmy = {
    isNormalUser = true;
    description = "Hilmy";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };

  programs = {
    fish.enable = true;
    steam.enable = true;
  };

  nixpkgs.config.allowUnfree = true;
}
