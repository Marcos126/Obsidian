# 1 Pre-instalacion


## 1.1 Descagar la imagen
- Descargar la imagens desde la pagina oficial de arch
## 1.2 Verificar la firma de la imagen
- De el proceso de verificacion tengo que investigar mas porque no lo entiendo 
- #corregir 
##  1.3 Preparar el medio de instalacion
 - Quemar la imagen descargada en un usb para poder bootear la computadora desde ahi
	 - Rufus
	 - dd
	 - ventoy
## 1.4 Bootear en la computadora
- Apagar la computadora, conectar el usb y seleccionarlo como dispositivo para bootear
## 1.5 Layout de consola y teclado
- Seleccionar la distribucion del teclado y la fuente de la consola <pre>localectl list-keymaps</pre>
- Seleccionar la fuente
<pre>setfont *fuente*(La fuente por defecto esta bien)</pre>
## 1.6 Verify the boot mode
- Para verificar el boot mode
<pre> cat /sys/firmware/efi/fw_plataform_size</pre>
- si a medida vamos escribiendo "efi" no podemos autocompletar el comando es porque estamos en bios
## 1.7 Connectar a internet
- Como verificar si estoy conectado a internet
<pre>pint 8.8.8.8 </pre>
- Para conectarnos a wifi tenemos que usar **iwctl** o **nmcli**
- Conexion por ethernet
## 1.8 Actualizar la hora del sistema
## 1.9 Particion del disco
Para hacer las particiones del disco, primero vamos a ver las distintas particiones que ya estan creadas con el comando <code>fdisk -l</code> , cuando identifiquemos el disco en el que queremos instalar arch vamos a usar 
<code> fdisk /dev/disco_para_particionar</code>

###  Example layouts

 **UEFI** with *GPT*

| ***Mount point*** | ***Partition***             | ***Partition type*** | ***Suggested size***                    |
| ----------------- | :-------------------------- | -------------------- | --------------------------------------- |
| `/mnt/boot`       | `/dev/efi_system_partition` | EFI system partition | 1GB                                     |
| `[SWAP]`          | `/dev/swap_partition`       | Linux swap           | At leasat 4GB                           |
| `/mnt`            | `/dev/root_partition`       | linux x86-64 root(/) | Remainder of the device. at least ~25GB |

**BIOS** with *MBR*

| ***Mount point*** | ***Partition***       | ***Partition type*** | ***Suggested size***                    |
| ----------------- | :-------------------- | -------------------- | --------------------------------------- |
| [SWAP]            | `/dev/swap_partition` | Linux swap           | At least 4GB                            |
| /mnt              | `/dev/root_partition` | Linux                | Remainder of the device. at least ~25GB |

## 1.10 Formatear las particiones
Una vez creado el esquema de particiones, formateamos las particiones de la siguiente manera.

<code>mkfs.ext4 /dev/root_partition</code>

Si creaste una particion swap, la formateamos de la siguiente manera

<code>mkswap /dev/swap_partition</code>

## 1.11 Montar las particiones
Con las particiones formateadas, montamos los archivos de la imagen en el sistema.

<code> mount /dev/root_partition /mnt </code>

para sistemas UEFI, tambien montamos la particion de UEFI

<code> mount --mkdier /dev/efi_system_partition /mnt/boot </code>

y montamos el swap.

<code>swapon /dev/swap_partition</code>

# 2 Instalacion
## 2.1 seleccion de mirrors

Para mejorar la velocidad de descarga de paquetes, los mirror server estan definidos en <code>/etc/pacman.d/mirrorlist</code> para seleccionar los 20 mas rapidos ordenados por velocidad de descarga se puede usar el comando
<p><code>reflector</code></p>


## 2.2 instalacion de paquetes esenciales
*(Ningun software o configuracion(excepto por <code>/etc/pacman.d/mirrorlist</code>) pasa del environment live al systema)*
Ahora vamos a instalar firmware, base y linux  kernel
<code>pacstrap -K /mnt base linux linux-firmware</code>

# 3 Configuracion del sistema
## 3.1 Fstab

Para generar un fstab
<code>genfstab -U /mnt >> /mnt/etc/fstab</code>

## 3.2 Chroot

para cambiar el root al nuevo sistema

<code>arch-chroot /mnt</code>

# 3.3 Time

para configurar la zona horaria
<code>ln -sf /usr/share/zoneinfo/REGION/CIUDAD /etc/localtime</code>

Correr <code>hwclock</code> para generar el archivo <code>/etc/adjtime</code>
<code>hwclock --syntohc</code>
## 3.4 Localization
Editar el archivo <code>/etc/locale.gen</code> y descomentar la linea <code>en_US.UTF-8 UTF8</code> y cualquier otra que necesites. generar los locales con:

<code>locale-gen</code>

crear el archivo <code>locale.conf</code> y configurar el LANG de acuerdo a eso

<p>/etc/locale.conf <br>------------------------<br>LANG=en_US.UTF-8</p>
si cambiaste el layout de la terminal, hace los cambios persistentes en <code>vconsole.conf</code>

<p> <br>/etc/vconsole.conf<br>-----------------<br>KEYMAP=TU-LAYOUT</p>

## 3.5 Network configuration
Crear el archivo de hostname:
<p>/etc/hostname<br>---------------<br>
yourhostname</p>

## 3.6 Initramsfs

Usualmente no requrido, pero por las dudas.
<code>mkinitcpio</code>

## 3.7 Root password
Configura el password del root
<code>passwd</code>
## 3.8 Boot loader
Selecciona e instala un boot loader capaz de soportar linux

<code>pacman -S install grub</code>
## 4 Reboot
Ahora podes salir del chroot environment escribiendo <code>exit</code> o presionando <code>CRTL+D</code>
Opcionalmente podes desmontar las particiones manualmente con umount -R /mnt lo que te permite saber si habia particiones ocupadas y podes encontrar la causa con <code>fuser</code>
# 5 Post-installation

`