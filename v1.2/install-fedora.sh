#! /bin/bash
# Script criado por: Joseph (discord: REDVENOMEXTREME#8288). 
# Grupo do discord da Sociedade Pinguim (https://discord.gg/ewe2TubvDW).
# Grupo do discord do REDVENOM EMPIRE   ().

echo "Verificando atualizações do sistema! (Digite sua senha)"
    sudo dnf update -y

echo "Verificando se o RPM Fusion está instalado"
    sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

echo "Instalando dependencias"
    sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
    sudo dnf install mesa-dri-drivers.x86_64 mesa-vulkan-drivers.x86_64 vulkan-tools.x86_64 

echo "Instalando Steam, Lutris, Heroic Games Laucher"
    sudo flatpak install flathub com.heroicgameslauncher.hgl com.valvesoftware.Steam net.lutris.Lutris