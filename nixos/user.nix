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
      # cli tools
      xsel
      lazygit
      ripgrep
      fd
      googler
      zoxide
      #============================
      #programming languages
      rustup
      nodejs
      # password manager
      _1password
    ];
  };

  fonts.fonts = with pkgs; [
    nerdfonts.override = {fonts = ["FiraCode"];}
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
