# Capa de sesion
![[Pasted image 20240403174657.png]]

Encargada de recibir peticiones de la [[Capa de presentacion]] y utilizar los servicios de la [[Capa de transporte]]


La capa de sesion es donde se realizan, se mantienen y se terminan las conexiones.

Mientras que la capa de transporte se encarga del flujo real de datos, la capa de sesion actua como un anunciador, programando solicitues y envios de datos y saber si estos fueron completados correctamente, sincronizando la transmision de datos

Tambien se encarga de mantener el control de quien esta recibiendo y enviando datos, para esto utiliza tokens, que es algo muy parecido a encriptacion, intercambiando datos sensibles por otros aleatorios que se usan para verificar que los datos que recibio sea los mismo que envio el usuario


# Protocolos
- **Session establishment in TCP**
	- Proceso por el cual se establece una conexion TCP fiable antes de comenzar a transmitir datos, esto se logra con un *three ways handshake*.
		- Cuando te conectas a un sitio web, tu navegador *establece una conexion* tcp con el servidor del sitio web.
- **SIP(*Session Initiation Protocol*)**
	- Para la *iniciacion, modificacion y finalizacion* de sesiones.
		- Cuando hacer una llamada por discord, *SIP* se encarga de *"(ringear)"* a los participantes, *negrociar los pareametros* de sesion y *cerrar* la conexion una vez que termina la llamada.
- **RTP(*Real-time Transport Protocol*)**
	- Define un *formato de paquetes* estandar para el envio de audio y video sobre internet
		- Cuando es un partido de futbol, *RTP* esta siendo utilizado para entregar el video y audio en tiempo real a travez de internet.
- **RPC(*Remote Procedure Call*)**
	- Es un programa que utiliza una computadora para *ejecutar codigo* en otra maquina *remota* sin tener que procuparse por las comunicaciones entre ambas
		- Servicios de computacion en la nube que le permiten a desarrolladores *ejecutar codigo* en respuesta a eventos.
- **Named Pipe**
	- Utilizado para *proporcionar comunicacion* entre procesos de la misma computadora o entre procesos en diferentes computadoras en una misma red, utilizando canalizaciones.
		- Cuando una aplicacion web realiza una *consulta* a una base de datos de la *misma red* puede estar utilizando named pipe para hacerlo de manera *eficiente*.

# #EnseñanzaFinal 
🗣️ En esta clase aprendí la importancia de la capa de sesión, la cual es crucial para el establecimiento, mantenimiento y finalización de las conexiones mediante sesiones. Esta capa también se encarga de sincronizar la transmisión de datos para prevenir errores causados por desconexiones inesperadas. Aunque protocolos como RPC, RTP y SIP realizan funciones que podrían asociarse con la capa de sesión, también interactúan con otras capas, demostrando la flexibilidad y la complejidad de las comunicaciones en red.