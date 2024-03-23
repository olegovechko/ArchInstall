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
               Installing linux-wifi-hotspot
-------------------------------------------------------------------------
"
yay -S --noconfirm --needed linux-wifi-hotspot
echo -ne "
-------------------------------------------------------------------------
               Installing sc-controller
-------------------------------------------------------------------------
"
yay -S --noconfirm --needed sc-controller
echo -ne "