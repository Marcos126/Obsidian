# Direcciones IP y su estructura
## IP
- Las ip es la manera en la que las computadoras se comunican en internet, las ip usan algo muy importante que es el protocolo IP
- El protocolo IP se encarga de el ruteo, que es la manera en la que se va a transmitir la informacion o los caminos que va a tomar.
## Los rangos de ip

Direccion IP
<P>127.0.0.1 <br>------------<br>Localhost</p>
Se utilizan 4 numeros separados por puntos, es el protocolo IPV4, tambien existe el IPV6 pero no es tan utilizado

Cada numero de la ip, representa un byte (un octeto de bits), en total son 4 bytes, lo que seria igual a <p>8bits + 8bits + 8bits + 8 bits = 32bits </p>

Si tuviesemos un byte compuesto por el siguiente conjunto de bits `11111111`, este numero seria equivalente a 255, que seria la suma de el valor de todos los bits que componen el byte, esos valores serian, 
<p> 1 + 2 +4 + 8 + 16 + 32 + 64 +128. </p>
tendrian esto valores porque en el sistema de [[Numeros binarios]] cada digito es una potenida de 2 del anterior, y se lee de derecha a izquierda, asi



|   128   |   64    |   32    |   16    |    8    |    4    |    2    |      1      |
| :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :---------: |
| $$2^8$$ | $$2^7$$ | $$2^6$$ | $$2^5$$ | $$2^4$$ | $$2^3$$ | $$2^2$$ | $$2^1$$<br> |


Debido a esto, el numero maximo de ips que se puede tener es `255.255.255.255` 
- Aunque no se pueden utilizar todas, las ips trabajan con un rango y cada rango es para funciones especificas.
- los 3 primeros numeros (de izquierda a derecha) corresponden a la red, y el ultimo numero de la derecha, corresponde la host.

# #EnseñanzaFinal 

<p>🗣️En esta clase aprendimos que las direcciones ip son la manera que las computadoras se comunican por internet, que una ip es diferente al protocolo ip, el cual se encarga de rutear la informacion, es decir, como y por donde se va a enviar, que una direccion ip es un conjunto de 4 bytes, que cada uno puede tener un valor maximo de 255 pero que ese no es el numero maximo de direcciones ips porque hay ips reservadas y que los primeros 3 numeros de la izquierda corresponden a la red y el ultimo de la derecha al host</p>