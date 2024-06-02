------------------
- Tags: #Herramientas #Security #Penetration-testing #Web 
--------
# Descripcion
Burp Suite es una suite de herramientas de seguridad y pruebas de pentracion web, diseniada para identificar vulnerabilidades y problemas de seguridad en aplicaciones web. Ofrece una variedad de herramientas integradas que trabajan juntas para soportar todo el proceso de seguridad, incluyendo el mapeo y el analisis de la superficie de ataque de aplicaciones, la busqueda de vulnerabilidades y la explotacion de las mismas.
# Funcionalidades clave
- Interceptacion de Proxy:  Permite interceptar, inspeccionar y modifiar las solicitudes y respuestas entre el navegador y el servidor.
- Escaner de Seguridad: Automatiza el proceso de deteccion de vulnerabilidades comunes.
- Intruder: Automatiza ataques personalizados para identificar vulnerabilidades.
- Repeater: Facilita la modificacion y reenvio de solicitudes individuales



# Utilizacion
- Ventana de Proxy: Esta ventana sirve tanto para setear la configuracion del proxy como para ver las peticiones que hayas interceptado, podes habilitar tanto la interceptacion como dejarla inhabilitada, siempre que tengas el navegador configurado con el proxy y el burpsuite abierto, las cosas van a quedar guardadas en el historial del proxy, se puede configurar el scope para que solo guarde en el historial las cosas de un solo dominio y no otras peticiones que haga a otros dominios que no te interesen.
- Ventana de Intruder: Cuando interceptes algo con el proxy podes mandarlo a la ventana de intruder utilizando "<CRTL>I", esto lo que va a hacer es permitirte cambiar parametros para realizar ataques de fuerza bruta, intercambiando el parametro deseado con lo que le digas que tiene que intercambiarlo, no es recomendable porque la version gratuita es muy lenta, ya que no utiliza hilos. Esta ventana cuenta con distintos modos para realizar el ataque
    - Tipos de ataque de Intruder
        - Sniper: Este modo selecciona un solo parametro, aunque le introduzcas mas, solo agarra el primer parametro y es el que utiliza para hacer el ataque.
        - Battering RAM: En este modo se pueden seleccionar multiples parametros pero a todos los va a intercambiar por el mismo payload.
        - Pitchfork: Este modo se pueden seleccionar multiples parametros y personalizar los payloads, los cuales van a ir cambiando a la par entre listas.
        - Clusterbomb: Este modo permite seleccionar multiples parametros y personalizar cada uno con los payloads que desees. En este modo, si se agregan 2 listas, primero se va a agarrar la primera linea de la primera lista y se va a intentar todas las lineas de la segunda lista, cuando se terminen la lineas de la segunda lista se va a pasar a la segunda linea de la primera lista y se va a proceder a terminar de nuevo con la segunda lista.
- Ventana de Repeater: En la ventana de repeater, a la cual se le puede mandar una peticion interceptada por el proxy utilizando "<CRTL>R", podremos analizar y enviar peticiones manualmente una vez que las hayamos modificado de la manera que queramos, tambien tendremos una ventana para ver la respuesta, el renderizado de la pagina( aunque no podremos interactuar con ella desde alli).
- Ventana de Decoder: Esta ventana sirve para decodificar o codificar cosas, puede ser texto plano, hashes, base64, url encoded, etc etc.
- Ventana de Comparer: Esta ventana sirve para comprar dos o mas peticiones, el burpsuite va a hacer un diff entre ellas y marcas, las cosas que se hayan agregado, eliminado o modificado.

