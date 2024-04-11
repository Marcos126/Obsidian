# HyperText Transfer Protocol (HTTP) 

La gran mayoria de aplicaciones, constantemente interactuan con el internet. La mayoria de las comunicaciones hechas a traves de internet son peticiones del protocolo HTTP, este es un protocolo utilizado para acceder a recursos de la WWW (World Wide Web). El termino hypertexto significa que contiene links a otros recursos.

Las comunicaciones de HTTP consisten en un cliente y un servidor, donde el cliente pide recursos al servidor, el servidor procesa la peticion y le devuelve los recursos solicitados. El puerto por defecto de las comunicaciones HTTP es el puerto 80.
Las mismas peticiones son utilizadas para acceder a paginas web. Ingresamos un **Fully Qualified Domain Name(*FQDN*)**  como un **Uniform Resource Locator(*URL*)** para alcanzar la pagina deseada.


# URL

A los recursos de HTTP se acceden a traves de URL, la cual puede o no contener muchisimas especificaciones de la pagina que queremos visitar, a continuacion, la estructura de una URL
`http://admin:password@inlanefreight.com:80/dashboard.php?login=true#status`

| http:// | admin:password@ | inlanefreight.com | :80    | /dashboard.php? | login=true#  | status    |
| ------- | --------------- | ----------------- | ------ | --------------- | ------------ | --------- |
| Scheme  | User Info       | Host              | Puerto | Path            | Query string | Fragments |

Componentes
- Scheme:
	- http:// https://
		- Usado para identificar el protocolo con el que se quiere conectar el cliente
- User Info:
	- admin:password@
		- Utilizado como crecenciales opcionales.
- Host:
	- inlanefreight.com
		- La direccion en donde estan los recursos solicitados, puede ser un hostname o una direccion IP
- Puerto:
	- :80
		- Separado del host por dos puntos (:), si no se especifica, http utiliza el 80 y https el 443.
- Path:
	- /dashboard.php
		- El recurso al cual se esta accediendo, el mimso puede ser un archivo o una carpeta, si no se especifica, el servidor devuelte el index por defecto (index.html)
- Query String:
	- ?login=true
		- ?
- Fragments:
	- `#status`
		- fragmentos que son procesados por el cliente,para alojar secciones del recurso primario.

![[Pasted image 20240409013011.png]]

Este diagrama representa lo siguiente, 
- Primero el cliente hace una peticion para acceder al sitio inlanefreight.com
- La peticion la resuelve el servidor DNS y la respuesta es enviada nuevamente al cliente
- El cliente, con esta informacion, manda una peticion a el servidor http
- El servidor http responde la peticion del cliente, en este caso, mostrando el inde.html

# cURL
Curl es utilizado para mostrar el codigo de html de las paginas con las que utilizamos el comando, esto nos sirve porque para hacer tests de penetracion estamos principalmente interesados en como nos contesta el servidor, y para eso este comando es mas *rapido y conveniente* que un buscador web 

![[Pasted image 20240409013532.png]]

Tambien podremos descargar la pagina o el archivo que le demos como parametro utilizando la -O flag, si quueremos ser mas espeficios, podriamos utilizar la -o flag para especificar el nombre con el que queremos descargar el archivo.

![[Pasted image 20240409013910.png]]

Esto no imprime la pagina pero muestra que descrago el archivo.

![[Pasted image 20240409014104.png]]
la flag -s en cambio, directamente no muestra nada.

