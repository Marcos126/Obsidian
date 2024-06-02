-------------------
- Tags: #Vulnerabilidades #XSS #CMS #Web
-----------------

# Descripcion:
XSS es un ataque que ocurre cuando un atacante logra inyectar un script malicioso en el contenido que es servido a otros usuarios. Este script puede ejecutarse en el navegador del usuario y realizar acciones en nombre del mismo, como robar cookies o datos de sesion.

# Tipos 

- Reflejado (Reflected): Este tipo de XSS se produce cuando los datos proporcionados por el usuario se reflejan en la respuesta HTTP sin ser verificados adecuadamente. Esto permite a un atacante inyectar código malicioso en la respuesta, que luego se ejecuta en el navegador del usuario.
- Almacenado (Stored): Este tipo de XSS se produce cuando un atacante es capaz de almacenar código malicioso en una base de datos o en el servidor web que aloja una página web vulnerable. Este código se ejecuta cada vez que se carga la página.
- DOM-Based: Este tipo de XSS se produce cuando el código malicioso se ejecuta en el navegador del usuario a través del DOM (Modelo de Objetos del Documento). Esto se produce cuando el código JavaScript en una página web modifica el DOM en una forma que es vulnerable a la inyección de código malicioso.

# Prevencion: 

- Escapar correctamente todas las entradas de usuarios que seran mostradas en las paginas.
- Utilizar Content Security Policy (CSP) para reducir el riesgo de ataques XSS.

# Herramientas utiles:

- [[BurpSuite]]
- [[OwaspZap]]


# WTF 
Los ataques XSS pueden tener graves consecuencias para las empresas y los usuarios individuales. Por esta razón, es esencial que los desarrolladores web implementen medidas de seguridad adecuadas para prevenir vulnerabilidades XSS. Estas medidas pueden incluir la validación de datos de entrada, la eliminación de código HTML peligroso, y la limitación de los permisos de JavaScript en el navegador del usuario.
