{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget
     gcc13
     gnumake
     git
     fzf
  ];

  programs.zsh.enable = true;

  programs.zsh.ohMyZsh = {
    enable = true;
    plugins = ["git" "fzf" "sudo"];
  };
}
