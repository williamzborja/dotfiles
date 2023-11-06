{ config, pkgs, ... }:
{
  users.users.dev = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "dev";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      #terminal
      alacritty
      #web browser
      firefox
      #editor
      neovim
      #software dev
      gh
      rustup
      #dwm
      st
      dmenu

    ];
  };



programs.git = {
    enable = true;
    config = {
    user.name  = "williamzborja";
    user.email = "williamzborja@gmail.com";
    };
  };
}
