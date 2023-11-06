{ config, pkgs, ... }:

{
# Configure keymap in X11
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";

    windowManager.dwm.enable = true;

    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "dev";
    };
  };
}
