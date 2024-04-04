# Model TCP/IP
- Model creado para estadarizar la comunicacion y evitar errores
![[Pasted image 20240403001015.png]]

**Capa de *interfaz de red***, se da mediante pulsos eletricos, hablando de aspectos fisicos, esta capa se solo  encarga de transmitir la informacion entre medios fisicos. 

**Capa de *internet***, esta capa solo se encarga de comunicar los dos hosts y establecer la ruta para la transmision de datos

**Capa de *transporte***, se encarga efectivamente de la transferecia de datos entre los hosts finales, con protocolos como *TCP* y *UDP*:
- el protocolo *TCP* siempre espera que haya una conexion entre ambos hosts, importa mucho que los paquetes lleguen integros y en orden
- el protocolo *UDP* solo manda los datos, sin importar si el otro hosts esta respondiendo o no.
- En la capa de aplicacion tenemos protocolos muy importantes en las transferencias de archivos, como *SSH*, *FTP*, *DHCP*, *HTTP*, *SMTP* y *DNS*. Esta capa ofrece a las aplicaciones la capacidad de acceder a los servicio de las demas capas y define los protocolos utilizados para el intercambio de datos

# #EnseñanzaFinal 

<p>🗣️En  esta clase a prendi lo que es el modelo TCP/IP, que es un modelo de capas apiladas, en el que cada capa sirve de funciones a las capas superiores, y las capas se construyen a partir de la capa inferior, en la primera capa, la capa de interfaz de red, tenemos la conexion por medio de pulsos electricos, en la segunda capa, la de internet, tenemos la conexion establecida entre los dos nodos, en la capa tres tenemos la la manera en la que se va a transmitir la informacion y en la capa cuatro tenemos a disposicion las demas capas para el uso de diversas aplucaciones, cada capa tiene sus protocolos, por ejemplo la 1 tiene el thernet, la 2 tiene el IP, la 3 tiene tcp y udp y la 4 tiene HTTP,FTP,SSH,etc</p>