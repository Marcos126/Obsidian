
# El protocolo FTP
El Protoclolo FTP (File Transfer Protocol), utilizado para transferir archivos desde desde un servidor a un cliente o vicebersa, con su variacion SFTP (SSH File Transfer Protocol) el cual es FTP pero encriptado por SSH.


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
