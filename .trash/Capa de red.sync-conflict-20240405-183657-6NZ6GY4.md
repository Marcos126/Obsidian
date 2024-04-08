# Capa de red

![[Pasted image 20240403163617.png]]

Tercera capa del [[EL modelo OSI]], recibe peticiones de la [[Capa de transporte]] y utiliza los servicios de la [[Capa de enlace de datos]]. En esta capa, las tramas que creo la capa anterior son transformadas en paquetes para un mejor control de la informacion.

Esta capa tambien se encarga de resolver problemas de congestion, compatibilidad de protocolos entre puntos diferentes y direccionar paquetes
# Definicion de rutas
Rutas estaticas y rutas dinamicas

# Protocolos
- **IP(*Internet Protocol*)**:
	- [[Direcciones IP y su estructura]]
	- Utilizado para enviar y recibir datos a traves de redes
	- La capa de red lo utiliza para enrutar los paquetes de datos a traves de diferentes redes
- **ARP(*Adress Resolution Protocol*)**:
	- Utilizado para mapear [[Direcciones MAC]] a [[Direcciones IP]], para poder verificar que el dispositivo al que le estamos enviando paquetes sea el indicado.
- **IPsec(*Internet Protocol Security*)**:
	- Utilizado ampliamente por *VPNs* (Virtual Private Networks) para asegurar conexiones entre dos puntos. Es un conjunto de protocolos utilizados para *cifrar, autenticar y asegurar* todos los paquetes a nivel de IP.
- **BGP(*Border Gateway Protocol*)**:
	- Utilizado entre proveedores de internet para intercambiar *informacion de enrutamiento*, esencial para mantener conectividad entre diferentes redes de ISP
	- Tambien redirije el trafico de paquetes si se congestiona la red
- **ICMP(*Internet Control Message Protocol*)**:
	- Utilizado para enviar mensajes de error y control a la red
	- Por ejemplo para realizar pings a otros dispositivos pra ver si estan en linea
- **IGMP(Interior Gateway Mapping)**:
	- Utilizado para gestionar membresias en grupos multicast de una red IP
	- Permite informarle a un router, que dispositivo va a ser parte del multicast, y asi ahorrar ancho de banda
- **OSPF(*Open Shortest Path First*)**:
	- Utilizado para encontrar la ruta mas corta entre 2 nodos, para esto utiliza el algoritmo Dijkstra
	- Tambien redirije el trafico de paquetes si se congestiona la red
- **RIP(*Routing Information Protocol*)**:
	- Utilizado para encontrar el mejor camino entre el emisor y el receptor, utilizando para esto un contador de saltos, el camino con menos saltos es considerado el mejor.
- **IGRP(*Interior Gateway Routing Protocol*)**:
	- Protocolo de enrutamiento del tipo vector distancia avanzado.
- **EIGRP(*Enchanced Interior Gateway Routing Protocol*)**
	- La version mejorada del IGRP.
