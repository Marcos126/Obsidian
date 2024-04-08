#  Capa de transporte
![[Pasted image 20240403170635.png]]

Cuarta capa del [[EL modelo OSI]], recibe peticiones de la [[Capa de sesion]], utiliza los servicios de la [[Informatica/Cybersecurity/Redes/Redes informaticas - Finalizado/2-Software_redes/Capa de red]]. Encargada de *regular el flujo de informacion* desde el origen hasta el destino.

Ven el mensaje completo de muchos paquetes, *comprobando errores* en la transmision, *confirmando* que sea exitosa y haciendo peticiones de *retransmision* en caso de que haya habido un *error*.

# Protocolos
- **TCP(*Transmision Control Protocol*)**
	- Utilizado para buscar la *confiabilidad y fiabilidad* en los paquetes enviados.
- **UDP(*User Datagram Protocol*)**:
	- Utilizado para enviar paquetes *sin confimacion*, un stream de datos aunque no haya respuesta de la otra parte.
- **SCTP(*Stream control protocol*)**:
	- Es un protocolo de comunicacion
- **SSL(*Secure Socket Layer*)**:
	- Prdecesor del protocolo TLS
	- Utilizado como estandar para mantener seguras las conexiones a internet y  proteger informacion confidencial que se envia entre dos sistemas.
- **TLS(*Transport Layer Security*)**:
	- Utilizado para encriptar la comunicacion entre dos puntos para garantizar la privacidad e integridad de la informacion

# #EnseñanzaFinal 
<p>🗣️Esta capa se encarga de minimizar errores en las transferencia,dividir mensajes y agregarele directivas que correspondan a su destino, esta capa trabaja con segmentos de paquetes por lo que etiqueta, quien lo envia, quien lo recibe y de que manera se va a realizar. En esta capa se encuentran protocolos como, UDP, TCP, SSL, TLS, Encargados de que los mensajes lleguen al destino correctamente, ya sea encriptandolos, asegurando su integridad o simplemente enviandolos sin mayor complicacion</p>