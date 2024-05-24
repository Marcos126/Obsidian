---------------------
- Tags: #CMS #WordPress #Web
--------------------
# Introducción
> WordPress es el sistema de gestión de contenidos (CMS) más popular del mundo, utilizado tanto para blogs personales como para sitios web empresariales complejos. Es conocido por su facilidad de uso, extensibilidad mediante plugins y temas, y una gran comunidad de desarrolladores.

# Enumeracion de vulnerabilidades
- **[[SQL-Inyeccion]]**: Debido a errores en la validacion de entradas 
- **[[Cross-Site_Scripting(XSS)]]**: Comunes donde las entradas de usuario no estan bien saneadas, permitiendo la ejecución de scripts maliciosos en el navegador de otros usuarios.
- **[[Cross-Site_Request_Forgery(CSRF)]]**: Ataques que pueden engañar a un usuario para que realice acciones no intencionadas en el sitio Magento donde está autenticado.
- **[[Remote_Code_Execution(RCE)]]**: Vulnerabilidades que permiten a un atacante ejecutar código arbitrario en el servidor.
- **Fugas de informacion**: Configuraciones inseguras que puedan resultar en la exposicion de informacion sensible

# Herramientas para pentesting de WordPress 
- [[BurpSuite]][^1]: Herramienta utilizada para enviar y analizar peticiones y respuestas entre el navegador y el servidor, pudiendo manipular datos y demas.
- [[WPScan]][^2]: Un escáner de vulnerabilidades para sitios que utilizan WordPress. Permite identificar problemas de seguridad en plugins, temas y configuraciones incorrectas.
- [[OWASP-ZAP]][^3]: Una herramienta que puede ser utilizada para realizar pruebas de penetración y encontrar vulnerabilidades de XSS, CSRF, y muchas otras.

----------------
## Referencias:
[^1]: Enlace a la pagina de BurpSuite: [Enlace](https://portswigger.net/burp)
[^2]: Enlace al repositorio de github de WPScan: [Enlace](https://github.com/wpscanteam/wpscan)
[^3]: Enlace a la pagina de Owasp-Zap: [Enlace](https://www.zaproxy.org/)
