jtenemos que instalar con pacman las siguientes cosas
- grub
y dependiendo de si estamos en UEFI, tambien tendremos que instalar
- efibootmgr
- dosfstools
- os-prober
- mtools
# BIOS
 grub-install --target=i386-pc /dev/sdX --recheck
 
# UEFI
Creamos la carpeta de arranque
`mkdir /boot/EFI`

Montamos la particion de efi en esa carpeta
`mount /dev/particion_EFI /boot/EFI`


`grub-install --target=x86_64-efi --efi-directory=/boot/EFI  --recheck`

# Configuracion 
grub-mkconfig -o /boot/grub/grub.cfg
