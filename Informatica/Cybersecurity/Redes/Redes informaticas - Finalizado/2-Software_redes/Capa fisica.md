# Capa fisica
![[Pasted image 20240403122304.png]]
Primera capa del modelo OSI, recibe peticiones de recibe peticiones de la [[Capa de enlace de datos]], es la responsable de transmitir señales a traves de medios fisicos.
Algunos aspectos importantes son:
- Señalizacion
- Medios de comunicacion
- Transmision binaria 


## Responsabilidad de la capa
- La responsabilidad de esta capa es aseguridad que si algo se envio como un 0, se reciba como un 0 o si se envio un 1, se reciba como un 1, para esto algunos aspectos que son importantes son:
	- El tipo de cableado que se va a utilizar
	- La confiabilidad que va a tener la transmicion
## Protocolos
- Algunos protocolos son
	- **RS-232**
		- Interfaz que designa una norma para el intercambio de datos binarios
	- **RJ-45**
		- Intefaz fisia para conectar redes de computadoras con cable estructurado.
		- Esta imagen  son formas dos formas diferentes de acomodar los cables (Straight y Crossover)![[Pasted image 20240403122343.png]]
	- **V.34**
		- Protocolo de conexion de modem, permite velocidades de hasta 32.8125 Kibibits/s
	- **100Base-TX**
		- Es la forma predominante de Fast Ethernet a 100 Mebibits/s
	- **SDH(*Synchronous Digital Hierarchy*)**
		- Varios protocolos de transmision de datos
	- **802.11**
		- Es una familia de normas inalambricas creada por el Insituto de IEEE(Ingenieron Electricos y Electronicos
		- 802.11n es la forma mas apropiada de llamar al Wi-Fi (Wireless Fidelity)
# Medios de comunicacion
- Existen medio como:
	- **Pulsos de luz**:
		- Mediante fibra optica, capas de transmitir luz de un punto a otro, haciendo que esa luz se pueda transformar en informacion.
	- **Pulsos electromagneticos**:
		- Mediante [[El cable de par trenzado]] que transmite pulsos de electricidad de un punto a otro
	- **Las ondas de radio**:
		- Mediante antenas que emitan ondas de radio a frecuencias especificas

<p>🗣️En esta clase aprendi que la capa fisica es la que se encarga de transmitir la informacion a traves del medio fisico, es decir, por luz, pulsos electromagneticos u ondas de radiofrecuencias, es responsable de que la informacion llegue de manera fiable, es decir, que si se envio un 1, se reciba un 1, existen protocolos como el RJ-45, que es la forma en la que un cable de par trenzado tiene que estar configurado, o el 802.11 que es la forma en la que el wifi transmite la señal</p>
