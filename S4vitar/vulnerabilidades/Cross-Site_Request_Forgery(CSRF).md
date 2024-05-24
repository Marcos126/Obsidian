--------------
- Tags: #Vulnerabilidades #CSRF #Web
-------------

# Descripción: 
CSRF es un ataque que enaniar a un usuario logueado para que realice acciones no deseadas en una aplicación web donde esta autenticado, como cambiar su dirección de correo electrónico o contrasenia 

# Prevención

- Implementar tokens anti-CSRF en formularios.
- Validar el origen de las peticiones para asegurar que sean legitimas

# Herramientas útiles

- [[OWASP-ZAP]]
- [[BurpSuite]]
