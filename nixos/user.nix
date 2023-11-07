{ config, pkgs, ... }:

{
  hardware.parallels.enable = true;
  users.users.dev = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "dev";
    extraGroups = [ "networkmanager" "wheel" ];
  };
 }
