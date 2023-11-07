{ config, pkgs, ... }:

{
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     wget
     clang 
     gnumake
     git
     fzf
     unzip
  ];

  programs.zsh.enable = true;
  programs.zsh.ohMyZsh = {
    enable = true;
    plugins = ["git" "fzf" "sudo"];
  };
}
