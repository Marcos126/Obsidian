#  Capa de transporte
![[Pasted image 20240403170635.png]]

A partir de esta capa, ya tenemos *conexiones verdaderas*, de host a host.
Esta capa busca minimizar la tasa de errores al punto de que sea irrelevante.

Se encarga de hacer que el mensaje pueda *dividido*, y que se le agreguen *directivas* para ser *enviado* correctamente dependiendo su destino.

Esta capa *no ve los paquetes*, lo unico que le importa es quien va a recibir o a quien se le va a enviar el mensaje y de que manera se va a realizar 
# Protocolos
- **TCP(*Transmision Control Protocol*)**
	- Utilizado para buscar la confiabilidad y fiabilidad en los paquetes enviados.
- **UDP(*User Datagram Protocol*)**:
	- Utilizado para enviar paquetes sin confimacion, un stream de datos aunque no haya respuesta de la otra parte.
- **SCTP(*Stream control protocol*)**:
	- Es un protocolo de comunicacion
- **SSL(*Secure Socket Layer*)**:
	- Prdecesor del protocolo TLS
	- Utilizado como estandar para mantener seguras las conexiones a internet y  proteger informacion confidencial que se envia entre dos sistemas.
- **TLS(*Transport Layer Security*)**:
	- Utilizado para encriptar la comunicacion entre dos puntos para garantizar la privazidad e integridad de la informacion

# #EnseñanzaFinal 
<p>🗣️Esta capa se encarga de minimizar errores en las transferencia,dividir mensajes y agregarele directivas que correspondan a su destino, esta capa trabaja con segmentos de paquetes por lo que etiqueta, quien lo envia, quien lo recibe y de que manera se va a realizar. En esta capa se encuentran protocolos como, UDP, TCP, SSL, TLS, Encargados de que los mensajes lleguen al destino correctamente, ya sea encriptandolos, asegurando su integridad o simplemente enviandolos sin mayor complicacion</p>