#!/usr/bin/env bash
#github-action genshdoc
#
# @file Post-Setup
# @brief Finalizing installation configurations and cleaning up after first boot
echo -ne "
-------------------------------------------------------------------------
                    █████╗ ██████╗  ██████╗██╗  ██╗
                   ██╔══██╗██╔══██╗██╔════╝██║  ██║
                   ███████║██████╔╝██║     ███████║
                   ██╔══██║██╔══██╗██║     ██╔══██║
                   ██║  ██║██║  ██║╚██████╗██║  ██║
                   ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
-------------------------------------------------------------------------
                   Final Setup and Configurations
"
sudo pacman -Syu
echo -ne "
-------------------------------------------------------------------------
               Installing vulkan
-------------------------------------------------------------------------
"
sudo pacman -S --noconfirm --needed vulkan-icd-loader vulkan-radeon vulkan-headers vulkan-validation-layers vulkan-tools amdvlk
echo -ne "
-------------------------------------------------------------------------
               Installing linux-wifi-hotspot
-------------------------------------------------------------------------
"
yay -S --noconfirm linux-wifi-hotspot
echo -ne "
-------------------------------------------------------------------------
               Installing sc-controller
-------------------------------------------------------------------------
"
yay -S --noconfirm sc-controller