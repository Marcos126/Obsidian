--------------
 - Tags: #Magento #Enumeración 
--------------

# Introduccion
>La herramienta **MageScan** [^1] esta dise;ada para sitios web que utilizan la plataforma magento. Desarrollada para identificar configuraciones correctas y vulnerabilidades, es ampliamente utilizada para auditar la seguridad de tiendas en linea basadas en Magento.

# Uso 
Entre sus posibles usos encontramos
- Deteccion de versiones 
- Comprobacion de configuracion
- Deteccion de vulnerabilidades

Con el siguiente comando podremos realizar un escaneo:

```bash
php magescan.phar scan:all http://example.com
```

Para especificar que partes de la pagina deseas escanear, se puede utilizar comando adicionales, por ejemplo, para escanear solo la configuracion del servidor: 

```bash
php magescan.phar scan:server http://example.com
```


-----------
# Referencias

[^1]: MageScan  [Github](https://github.com/steverobbins/magescan)

