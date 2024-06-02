------------
- Tags:
------------
# Herramientas de enumeracion de sistema operativo
- LSE (Linux Smart Enumeration)[^1]: Es una herramienta de enumeracion para sistemas linux que permite a los atacantes obtener informacion detallada sobre la configuracion del sistema, los servicios en ejecucion y los permisos del archivo. LSE utiliza una variedad de comandos de linux para recopilar informacion y presentarla en un formato facil de entender. Al utilizar LSE, los atacantes pueden detectar posibles vulnerabilidades y encontrar informacion valiosa para futuros ataques 

- Pspy[^2]: Es una herramienta de enumeracion de procesos que permite a los atacantes observar los procesos y comandos que se ejecutan en el sistema objetivo a intervalos regulares de tiempo. Pspy es una herramienta util para la deteccion de malware y backdoors, asi como para la identificacion de procesos maliciosos que se ejecutan en segundo plano,sin la interaccion del usuario.

- Manualmente: Se puede hacer un script en bash para lograr detectar tareas y comando que se ejecutan a intervalos regulares de tiempo, abusando de ello del comando 'ps -eo user,command'.


# Formas de escalar privilegios

- suid


# Ayudas 
- GTFOBins[^3]: Pagina para encontrar vulnerabilida en binario que tengan, capabilities, suid, etc etc


---------
## Referencias
[^1]: Enlace a el repositorio de LSE en github :[Enlace]()
[^2]: Enlace a el repositorio de Pspy en github : [Enlace]()
[^3]: Enlace a la pagina de GTFOBins : [Enlace]()
