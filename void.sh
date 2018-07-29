#!/bin/sh

clear

#No poner logos enormes que nomas traguen pantalla

echo "                             __  "  
echo "\  /_ . _|  | _  _|_ _ ||  .  _) "
echo " \/(_)|(_|  || )_)|_(_|||  | __) "
                                 

if [ "$EUID" -ne 0 ]
  then echo "Por favor ejecute el script como root"
  exit
fi

 #UPDATING VOID
 echo "Actualizar VOID"
 xbps-install -Suv
 xbps-install -S


#INSTALACION DE LIBS ,ETC
echo -e "\e[0;31m Instalando Dependecias De I3WM\e[0m"

xbps-install -S xinit -y
xbps-install -S xorg -y
xbps-install -S base-devel -y
xbps-install -S I3 -y
xbps-install -S i3status -y
xbps-install -S i3-gaps 
xbps-install -S termite -y
xbps-install -S emacs -y
