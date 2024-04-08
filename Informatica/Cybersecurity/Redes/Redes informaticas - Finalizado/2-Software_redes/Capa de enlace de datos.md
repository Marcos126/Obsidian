# Capa de enlace de datos
![[Pasted image 20240403152214.png]]
Segunda capa del [[EL modelo OSI]], recibe peticiones de la [[Informatica/Cybersecurity/Redes/Redes informaticas - Finalizado/2-Software_redes/Capa de red]] y utilizar los servicios de la [[Capa fisica]]. Encargada de evitar que la informacion se transmita con errores y el control de acceso al medio.

Esta capa divide los datos en *tramas* para asegurarse que no sean muy chicos (*runts*) ni muy grandes (*giants*), tambien *verifica* que se hayan recibido bien los datos.

Los giants son datos que cuyo tamaño *sobrepasa* la MTU (Maximum Transfer Unit), en ethernet esto es 1500Bytes
Los runts son datos que cuyo tamaño *no sobrepasa* los 64bytes. Normalmente causados por colisiones.
# Protocolos
- **Ethernet**
	- Define cómo los datos se encapsulan en tramas, cómo se accede y comparte el medio de transmisión, y cómo se utilizan las direcciones MAC para identificar los dispositivos en la red
		- Utilizada por ejemplo para *conectar* tu computadora a tu router
- **VLAN (*Virtual Local Area Network*)**
	- Metodo para crear redes logicas *independientes* dentro de una red fisi4ca.
		- Utilizada por ejemplo para aumentar la *seguridad* de una red.
- **ATM(*Asynchronous Transfer Mode*)**:
	- *Transporte* de una gama completa de trafico de usuarios, incluidas las señales de voz, datos y video.
		- Utilizado para datos de paquetes de *tamaño fijo*, facilitando la gestion de paquetes
- **HDP(*Heterogeneus Data Protocol*)**:
	- Base para el *intercambio* de datos entre diferentes nodos en un sistema de software distribuido. 
	- Su implementacion supone la *estandarizacion* de la transmision de datos de volumen minimo.
		- Utilizado para mejorar la *interoperabilidad* entre distintas maquinas de una misma red en sistema heterogeneos.
- **Frame Relay**:
	- Es una tecnica de comunicacion mediante *retransmision de tramas* para redes de circuito virtual.
		- Diseñado para *transmitir eficientemente* datos sobre WAN
- **HDLC(*High-Level Data Link Control*)**:
	- Es un protocolo de comunicaciones de proposito general punto a punto que opera a nivel de enlace de datos.
		- Puede operar tanto sincrono como asincrono
- **PPP(*Point-to-Point Protocol*)**:
	- Establece una *conexion directa* ente dos nodos de una red
- **Q.921**
	- Este protocolo *multiplexa* varias conexiones en un solo canal real entre usuarios
- **Token Ring**
	- Este testigo permite a cualquier estacion emisora de la red (anillo) enviar datos cuando llega el *testigo* a esa ubicacion

# Subcapas

Dentro de la capa de enlace de datos, la *IEEE*(Intutite of Electrical and Electronic Engeneers) decidio seccionarla en dos sub capas, las cuales son
- **LLC (*Logical Link Control*)** o subcapa de control de enlace logico.
- **MAC (*Media Access Contro*)** o subcapa de control de acceso al medio.

## MAC

Se refiere a los protocolos que sigue el host para acceder a los medios fisicos, esta dicta cual de los dispositivos va a estar transmitiendo datos binarios. Se encarga de la topologia de la red y el metodo de acceso a la misma. Todas las tecnologias de red tienen una subcapa MAC diferente, y en esta residen las [[Direcciones MAC]].

## LLC
Transporta los datos del protocolo de red, un paquete IP e informacion del destino. Agregando componente de direccionamiento como
- **DSAP**:
	- Acceso al servicio destino
- **SSAP**:
	- Punto de acceso al servicio fuente
Luego este paquete IP reempaquetado, viaja hacia la subcapa MAC para que la tecnologia especifica le adicione datos y lo encapsule