-------------------
- Tags: #Vulnerabilidades #XSS #CMS #Web
-----------------

# Descripcion:
XSS es un ataque que ocurre cuando un atacante logra inyectar un script malicioso en el contenido que es servido a otros usuarios. Este script puede ejecutarse en el navegador del usuario y realizar acciones en nombre del mismo, como robar cookies o datos de sesion.

# Prevencion: 

- Escapar correctamente todas las entradas de usuarios que seran mostradas en las paginas.
- Utilizar Content Security Policy (CSP) para reducir el riesgo de ataques XSS.

# Herramientas utiles:

- [[BurpSuite]]
- [[OwaspZap]]
