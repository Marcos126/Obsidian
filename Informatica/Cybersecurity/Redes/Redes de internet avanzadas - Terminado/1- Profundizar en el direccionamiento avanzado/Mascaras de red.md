# Mascaras de red
Las mascaras de de red son lo que nos indica cuantos dispositivos puede tener conectados una red, esto hace parte del direccionamiento IP

![[Pasted image 20240406104034.png]]

Esta tabla representa las mascaras de red validas, las cuales se caracterizan porque cuando aparece el primer cero, todos los demas numeros son 0. Lo que nos deja con 2 lados bien diferenciados, el de los 1 y el de los 0.

- El lado de los 1 nos especifica que parte de la direccion IP va a es el identificador de red.
- El lado de los 0 nos va a especificar el numero de host, nos dicen cuantos dispositivos se pueden llegar a conectar en una red, el cual va a estar determinado por $2^n-2$, n en este caso siendo la cantidad de ceros. Se le restan 2 hosts porque hay 2 IP reservadas al ID de la red y al Broadcast, ambas no pueden ser asignadas a ningun dispositivo.
- Dependiendo cuantos bits se asignen al identificador de red 


![[Pasted image 20240405221858.png]]

En estos 2 casos, tendriamos lo siguiente 
- Mascara de red: 255.255.128.0, teniendo 15 ceros, ($2^{15}-2$)tendriamos un total de 32.766 posibles conexiones.
- Mascara de red: 255.240.0.0, teniendo 20 ceros,($2^{20}-2$) tendriamos un total de 1.048.574 posibles conexiones.
## Algunos otros ejemplos

255.254.0.0 equivale a 17 posiciones binarias en 0 -> $2^{17} - 2$ = 131.070 hosts
255.255.224.0 equivale a 13 posiciones binarias en 0 -> $2^{13} - 2$ = 8190 hosts
255.0.0.0 equivale a 24 posiciones binarias en 0 -> $2^{24} -2$= 16.777.214 hosts
