#!/usr/bin/env bash
sudo cp /etc/nixos/hardware-configuration.nix ./nixos
sudo rm -rf /etc/nixos
sudo ln -s "$(pwd)/nixos" /etc/nixos
