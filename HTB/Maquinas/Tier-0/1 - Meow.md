# Meow - Introduccion
En esta maquina, la primera de hack the box,  Vamos a aprender un poco de la utilizacion de maquinas virtuales, como conectarse a las maquinas en Hack The Box, la conexion vpn, como confirmar la conexion, escaneo de puertos, protocolos y servicios.

## VM (Virtual Machine)
Una maquina virtual es software con la capacidad de virtualizar una computadora, o sea, poder utilizar una computadora adentro de otra de manera aislada, esto con la finalidad de ganar mas seguridad, aislando las actividades de la maquina virtual del host.

## VPN
Una vez adentro de la maquina virtual, vamos a abrir una terminal para conectarnos al VPN de Hack The Box para poder comunicarnos con la maquina objetivo, para esto vamos a utilizar el comando `openvpn`, este comando nos va a pedir privilegios de administrador, asi que vamos a tener que ejecutarlo con sudo, al cual le vamos a pasar como parametro el archivo que descargamos de hackthebox, de la siguiente manera
`sudo openvpn starting_point_MarcosNatale.ovpn ` 
esto nos va a conectar en la misma red que la maquina objetivo.
Para asegurarnos que tenemos conexion con la maquina vamos a utilizar el comando `ping` para ver si tenemos comunicacion con la maquina, de la siguiente manera
`ping {IP-Objetivo}`
`ping 10.129.234.237`
una vez que confirmamos la conexion podemos empezar a a hackear la maquina.

## Nmap
nmap (Network Maper) es una herramienta utilizada para enumerar puertos o hosts en una red, tiene muchos parametros y cosas que podemos hacer con el pero vamos a pegarnos a lo basico, la utilizacion seria la siguiente.
`nmap {IP-Objetivo}`
Este comando lo que va a hacer es ejecutar todos los parametros por defecto de nmap sobre la ip objetivo, algunos de los parametros importantes van a ser

- -p : flag utilizada para declarar los puertos que van a ser escaneados, se hace por ejemplo de la siguiente manera
	- -p- (Va a escanear todos los puertos)
	- -p22,80,443,445,8080(Va a escanear los puertos 22,80,443,445,8080)
- -s : Esta flag significa scan, se utiliza junto con otra para determinar distintos tipos de scaneo, por ejemplo
	- -sC (Script scan) : va a ejecutar algunos scrits por defecto y nos va a traer la informacion recolectada de estos.
	- -sV (Version Scan): va a intentar descubrir y devolvernos la version de los servicios que encuentre en los puertos indicados 
	- -sS (Stealth scan): va a ejecutar un tipo de scaneo sigiloso, no concluyendo el tree ways handshake de el protocolo tcp.
	- -sCV: estas flags, se pueden combinar, esto quiere decir version y script scan.
- -O: Intenta descubrir el sistema operativo de la maquina objetivo
- -o: flag utilizada para hacer que el output sea almacenado en un archivo, el cual tambien tenemos que especificar, tambien tenemos que especificar el tipo de formato que vamos a querer, normalmente se utilizan N o G
	-  -oG {nombre-archivo} exporta el output en un formato grepeable (en el cual se puede utilizar grep)
	- -oN {Nombre_archivo} exporta el output en el formato estandar de nmap
- --min-rate: Esta flag especifica la cantidad minima de paquetes que se van a enviar por segundo, hay que tener en cuenta que para un escaneo de todos los puertos hay que escanear 65535 puertos.
	- --min-rate 5000: con esto especificamos que no queremos que se manden menos de 5000 paquetes por segundo.
- -n: Esta flag es utilizada para saltearse la fase de discovery y tratar al host como que esta activo, en vez de primero fijarse si lo esta.
- -Pn: Esta flag se utiliza para comunicarse directamente con la ip que le estamos pasando e ignorar servidores dns que puedan querer traducir la direccoin ip.

Comenzanco con el escaneo vamos a proceder a utilizar el siguiente comando.
![[Pasted image 20240505031219.png]]
`sudo nmap -p- -sS --min-rate 5000 -n -Pn {target-IP} -oG allPorts`
con esto lo que conseguimos es hacer un escaneo general rapido de todos los puertos activos para despues hacer otro escaneo mas profundo solo en los puertos necesarios
![[Pasted image 20240505031406.png]]
`nmap -p(puertos_encontrados) -sVC -n -Pn {target-ip}`
con este escaneo utilizamos solo los puertos que encontramos en el escaneo anterior apra intentar detectar la version y correr scripts en los servicios encontrados.
Como podemos ver se encontro el servicio telnet, que es un servicio para utilizar una maquina de forma remota.
si nos intentamos conectar a este servicio con el comando `telnet` entramos a una pantalla de login, con un par de intentos, nos damos cuenta de que el usuario root nos permite entrar sin necesidad de un password, nos dirijimos a /root/ y hacemos cat a el archivo root.txt para tener la flag que nos va a permitir dar por terminada la maquina.

Cuando nos conectamos a una maquina por algun protocolo como ssh, es una buena practica utilizar estos dos comandos
`export TERM=xterm`
`export SHELL=bash`
esto va a hacer que nuestra terminal sea mas interactiva y comoda para utilizar.

























Tags:
#Telnet #Protocols #Reconnaissance #WeakCredentials #Misconfiguration