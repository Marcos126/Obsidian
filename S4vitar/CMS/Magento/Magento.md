--------------
- Tags: #CMS #Magento #Web 
--------------
# Introducción
>Plataforma de comercio electronico de codigo a bierto, especialmente conocida por su robustez y capacidad para gestionar tiendas en linea de gran tramaño y alta complejidad.

# Enumeracion de vulnerabilidades
- **[[SQL-Inyeccion]]**: Debido a errores en la validacion de entradas 
- **[[Cross-Site_Scripting(XSS)]]**: Comunes donde las entradas de usuario no estan bien saneadas, permitiendo la ejecución de scripts maliciosos en el navegador de otros usuarios.
- **[[Cross-Site_Request_Forgery(CSRF)]]**: Ataques que pueden engañar a un usuario para que realice acciones no intencionadas en el sitio Magento donde está autenticado.
- **[[Remote_Code_Execution(RCE)]]**: Vulnerabilidades que permiten a un atacante ejecutar código arbitrario en el servidor.
- **Fugas de informacion**: Configuraciones inseguras que puedan resultar en la exposicion de informacion sensible


# Herramientas para pentesting de Magento 
- [[magescan]][^1]: Escanea paginas que utilizan magento para identificar vulnerabilidades de seguridad o problemas de configuracion
- [[Burpsuite]][^2]: Herramienta utilizada para enviar y analizar peticiones y respuestas entre el navegador y el servidor, pudiendo manipular datos y demas.
- [[OWASP-ZAP]][^3]: Una herramienta que puede ser utilizada para realizar pruebas de penetración y encontrar vulnerabilidades de XSS, CSRF, y muchas otras.

------------------
## Referencias
[^1]: Enlace al repositorio de github de Magescan: [Enlace](https://github.com/steverobbins/magescan)
[^2]: Enlace a la pagina de BurpSuite: [Enlace](https://portswigger.net/burp)
[^3]: Enlace a la pagina de Owasp-Zap: [Enlace](https://www.zaproxy.org/)
