{ pkgs, ... }:

{
  users.users.dev.packages = with pkgs; [
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
      tre-command
      figlet
      #============================
      #programming languages
      rustup
      nodejs
      openjdk17
      # password manager
      _1password
  ];

  fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = ["FiraCode" "Hack" "DroidSansMono" "JetBrainsMono" "RobotoMono"]; })
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
