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
      chromium
      firefox
      #editor
      neovim
      #software dev
      gh
      #dwm
      st
      dmenu
      xsel
      lazygit
      ripgrep
      fd
      #============================
      #programming languages
      rustup
      nodejs
      # password manager
      _1password
    ];
  };

  fonts.fonts = with pkgs; [
    nerdfonts
  ];
  programs = {
     git = {
      enable = true;
      config = {
        user.name  = "williamzborja";
        user.email = "williamzborja@gmail.com";
      };
     };

     starship.enable = true;
  };
}
