---------------------
- Tags: #Tools #WordPress  #Enumeración 
------------------------

# Introducción 
>La herramienta wspcan[^1] esta dise;ada especificamente para identificar vulnerabiliades en sitios web que utilizan WordPress.
Desarrollada por WPScan Team, amplicamente utilizada por profesionales para auditar la seguridad de sitios WordPress

# Uso
Entre sus usos podemos encontrar
- Enumeracion de usuarios
- Deteccion de versiones 
- Deteccion de vulnerabiliades

Con este comando de a continuación podremos realizar un escaneo.

```bash
wpscan --url http://example.com 
```

Si quisiéramos enumerar los usuarios podríamos hacerlo de la siguiente manera

```bash
wpscan --url http://example.com --enumerate -u
```

También si el escaneo encontrara algún usuario podríamos hacerle un ataque de fuerza bruta a su contraseña de la siguiente manera

```bash
wpscan --url http://example.com -U exampleUser -P /usr/share/wordlists/rockyou.txt
```

Este ataque de fuerza bruta tambien puede ser realizado manualmente abusando de el archivo **[[xmlrpc.php]]**[^2] creando un script en python, bash, etc.

Cabe recalcar que con esta herramienta tambien nos da la opcion de dejar un archivo de output, de usar proxys para ocultar nuestra ip, de ingresar un "user-agent" y cookies de sesion para paginas que no nos permitan el acceso sin una cuenta.

-----------
## Referencias 
[^1]: Proyecto de WPScan en Github: [Enlace](https://github.com/wpscanteam/wpscan)
[^2]: Blog abusando de el archivo xmlrpc.php: [Enlace](https://nitesculucian.github.io/2019/07/02/exploiting-the-xmlrpc-php-on-all-wordpress-versions/)
