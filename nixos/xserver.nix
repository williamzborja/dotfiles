{ config, pkgs, ... }:

{

environment.gnome.excludePackages = (with pkgs; [
      gnome-photos
      gnome-tour
    ]);

# Configure keymap in X11
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";

#    windowManager.dwm.enable = true;

    desktopManager.gnome.enable = true;
    
    displayManager = {

      gdm = {
        enable = true;
      };
      autoLogin.enable = true;
      autoLogin.user = "dev";
    };
  };
}
