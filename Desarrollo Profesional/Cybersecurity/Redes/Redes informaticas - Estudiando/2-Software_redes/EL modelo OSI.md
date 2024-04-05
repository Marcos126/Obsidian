# Modelo Open System Inteconection
- Lo utilizamos para *explicar y entender comunicacion* entre un host y su destino en una red LAN, MAN o WAN.
- Ademas ayuda a *categorizar* los protocolos 
- Cada capa le añade mas *informacion* a el mensaje enviado, cada capa esta *aislada y oculta* la manera en la que hace las cosas a la capa siguiente, solo le transmite el mensaje con la informacion extra(*se encapsulan*)
- La *informacion* puede ir desde arriba hacia abajo, cuando se esta enviando informacion, de esta manera
	- Va de arriba hacia abajo cuando se *envia*
	- Va de abajo hacia arriba cuando se *recibe*
 ![[Pasted image 20240403114129.png]]
- [[Capa fisica]]:
	- Se encarga de la transmision de datos por el medio fisico (Transformar electricidad a bits)
		- [[Que son bits y bytes]]
- [[Capa de enlace de datos]]:
	- Se hace el direccionamiento fisico
		- [[Direcciones MAC]]
- [[Capa de red]]:
	- Se define una ruta y direccionamiento
- [[Capa de transporte]]:
	- Coneccion punto a punto y confiabilidad
- [[Capa de sesion]]:
	- Comunicacion entre hosts
- [[Capa de presentacion]]:
	- Dar un formato a los datos
- [[Capa de aplicacion]]:
	- Capa con la que tiene contacto el usuario final

# Ataques a diferentes capas
![[Pasted image 20240403123203.png]]
En esta imagen podemos ver a que capa atacan diferentes tipos de ataque, voy a profundizar en ellos a medida que vaya adquiriendo conocimiento, pero para empezar.
- Exploit:
	- Se refiere a hacer uso de ganar acceso a la red mediante explotar alguna vulnerabilidad en alguna aplicacion que utilice el usuario.
- Phishing:
	- Se refiere a hacerse pasar por alguna informacion que te deberia llegar, por ejemplo estar esperando un mail del banco pero que en vez de eso te llegue un mail de alguien que dice ser el banco cuando en realidad no lo es.
- Session Hijacking:
	- Utilizar la el inicio de sesion de otra persona para hacerte pasar por ella
- Dos
	- Se refiere a un ataque de denegacion de servicio, sobre cargando la red de peticiones para que no puedan hacer uso de la misma
- MITM(Man in the middle):
	- Interceptar una conexion para recibir los paquetes que deberia estar recibiendo otra persona
- Spoofing
	- Hacerse pasar por otro dispositivo, por ejemplo cambiando tu direccion ip o tu MAC con la que estas conectado a una red red, ya sea para poder escalar privilegios o para interceptar paquetes.
- Sniffing
	- Interceptar paquetes mediante la la interceptacion del medio fisico, por ejemplo, engancharte a un cable para que a parte de llegar los mensajes a su destino, tambien te lleguen a vos

<p>🗣️En esta clase aprendi que el modelo osi, a diferencia de el modelo TCP/IP
tiene 7 capas(aunque hay un chiste que dice que tiene 8, que son los humanos), estas capas son, la fisica, la de enlace de datos, la de red, la de transporte, la de sesion, la de presentacion y la de aplicacion, estan apiladas una encima de la otra y cada capa oculta los detalles de lo que esta haciendo a la capa de arriba, pero le transmite la informacion del resultado final para que el mensaje pueda llegar a su destino</p>

