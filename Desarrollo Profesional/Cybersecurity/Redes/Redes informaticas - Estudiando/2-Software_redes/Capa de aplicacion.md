# Capa de aplicacion

![[Pasted image 20240403193610.png]]
# Protocolos
- **Telnet**:
	- Encargado de *transmitir archivos* y permitir el *acceso remoto* a un equipo, ya no se utiliza por problemas de seguridad
- **FTP**(File Transfer Protocol):
	- Utilizado para la *transferencia de archivos*, tambien tiene su version SFTP para asegurarse que los archivos esten cifrados.
- **EMAIL**/**POP**(Post Office Protocol)
	- Utilizado para *recuperar correo electronicos* de un mail server
- **SMTP**
	- utilizado para *enviar correo* electronicos, de cliente a servidor o servidor a servidor.
- **DNS**(Domain Name System):
	- Encargado de *traducir nombres* de dominio a direcciones IP
- **WWW**(World Wide Web)/**HTTP**(Hyper Text Transfer Protocol)
	- Utilizado para transferencia de *documentos de hypertexto* (paginas web) en el internet (World Wide Web).
- **P2P**
	- Utilizado para *compartir recursos* entre hosts, sin necesidad de un servidor central.
# Flags
Utilizadas para organizar la comunicacion y el procesamiento de datos en FTP, son las siguientes:
- **URG(*Urgent*)**:
	- Utilizada para comunicarle a la aplicacion FTP que los datos fijados se deben procesar *inmediatamente*
- **ACK(*Acknowledgment*)**:
	- Utilizada para *confirmar la recepcion* de paquetes FTP.
- **PSH(*Push*)**:
	- Utilizado para *facilitar inmediatamente* un segmento sin tener que pasar por el buffer de datos del emisor y el receptor
- **RST(*Reset*)**:
	- Utilizado para cuando surge algun error, *reestablecer* el paquete
- **SYN(*Synchronize*))**:  
	- Utilizada en el *primer mensaje* de la comunicacion como parte del three ways handshake, inicia el establecimiento de la conexion
- **FIN(*Finish*)**:
	- Utilizada para señalizar que la comunicacion ha *finalizado* la transmision.

# #EnseñanzaFinal 
<p>🗣️En esta clase aprendi para que funciona la capa de aplicacion, que es la que utiliza el usuario final, que esta tiene distintos protocolos como FTP para la transferencia de archivos, HTTP para transferencia de paginas we, entre otros, tambien utilizamos wireshark para ver una transferencia de archivos por FTP, en la cual aprendi a visualizar las flags y el three ways handshake. </p>