# 8 Tipos de dispositivos de red y como funcionan

## Hub

El Hub funciona como un repetidor, haciendo que cuando envien un paquete, lo envie a todos los dipositivos en la red, haciendo que llegue a su destino utilizando un campo verificador ([[Direcciones MAC]]) y solo lo acepta la maquina con ese campo verificador, aunque el mensaje llega a otras maquinas, estas lo rechazan. Muy inseguro.

## Switch

El switch se emplea para conectar diversos dispositivos cableados para formar una red LAN
- Switch de capa 2:
	- Este switch se encarga de comunicar la capa de enlace de datos, en la que estan las [[Direcciones MAC]], sin considerar direcciones IP
- Switch de capa 3:
	- Este switch tiene una tabla de direcciones MAC y una tabla de enrutamiento IP, controla comunicacion intra-VLAN y enrutamiento entre VLAN
- Otros tipos:
	- Desktop
	- Perimetrales no gestionables
	- Perimetrales gestionables
	- Troncales de prestaciones medias
	- Troncales de altas prestaciones

## Modem

*Convierte señales* analogas a electricas y biceversa, cuando recibis una señal desde el internet, el modem se encarga de *transformarla* en analago para que puedas verlo en la computadora y cuando envias un mensaje hacia el internet se encarga de *transformar* esa señal analoga en electricidad para poder enviarlo. 

## Repetidor

Dispositivo analogico que amplifica la señal de entrada.

## Firewall

Firewall de capa 2, actua como una pared entre el internet y la red interna, decidiendo si los paquetes que estan intentando ingresar son seguros o no para saber si dejarlos pasar o no, el firewall puede configurarse, ya sea por comportamiento, por politicas segun el dispositivo o ciertas keywords, posee tambien funcionalidades de filtro de aplicaciones, paginas, IPS, etc.


## Balanceadores de trafico

Para proteger servidores para asegurar la disponibilidad con esquemas activo-activo o activo-pasivo
- activo-activo:
	- Distribuye la carga entre distintos servidores para asegurarse de que ninguno se sobrecargue
- activo-pasivo:
	- Tiene un cluster de emergencia para cuando se sobrecargue el servidor principal.

## Gateway

Tecnologia que permite interconectar redes con protocolos y arquitecturas diferentes, se encarga de traducir la informacion del protocolo utilizado al protocolo de red usado en la red de destino.

## Puente

Interconecta segmentos de red haciendo la transferencia de datos en base a la direccion fisica de destino de cada paquete.


# #EnseñanzaFinal 
<p>🗣️Esta clase aprendi distintos tipos de dispositivos que puden utilizarse en redes, entre ellos los mas importantes son, firewall, switches y balanceadores de trafico, el firewall se encarga de bloquear o permitir el acceso de entrada o salida de datos dependiendo al configuracion, el switch dependiendo de que tipo se encarga de comunicar direcciones MAC, pudiendo crear una red LAN, los balanceadores de carga sirve para mantener seguros los servidores ante un potencial pico en la actividad.</p>