# Asignacion de direcciones IP

La asignacion de IPs consiste en saber que rango de IPs podemos utilizar y que rangos no, la cantidad de redes positbles y la cantidad de hosts posibles son dos conceptos separados, en la que la cantidad de redes es la cantidad de subredes que se pueden crear y la cantidad de hosts es la cantidad de hosts que se pueden conectar a cada subred.

| Clase | Desde     | Hasta           | Cantidades de redes | Cantidades de host | Ejemplo        |
| ----- | --------- | --------------- | ------------------- | ------------------ | -------------- |
| A     | 0.0.0.0   | 127.255.255.255 | 128                 | 1677214            | redes grandes  |
| B     | 128.0.0.0 | 191.255.255.255 | 16386               | 65534              | Redes medianas |
| C     | 192.0.0.0 | 223.255.255.255 | 2097152             | 254                | Redes pequeñas |
| D     | 224.0.0.0 | 239.255.255.255 | NA                  | NA                 | Multicast      |
| E     | 240.0.0.0 | 255.255.255.255 | NA                  | NA                 | Investigacion  |
- *El intervalo de 127.0.0.0 a 127.255.255.255 esta reservado como direcciones de loopback y no se utiliza*
## Mascaras de subred
- Sirven para reconocer nuestra direccion IP y las direcciones IP disponibles, por ejemplo
$$255.255.255.0$$
- Tambien puede ser diferente, como:
$$255.255.0.0$$
$$255.255.255.252$$
$$255.255.224.0$$
- Esto se converte en binario, separado octetos de bits de la direecion ip y la mascara de subred

| Primer octeto | Segundo octeto | Tercer octeto | 4to octeto | Direccion IP  |
| :------------ | -------------- | ------------- | ---------- | ------------- |
| 11000000      | 10101000       | 00010110      | 01010111   | 192.168.22.87 |
| 11111111      | 11111111       | 11111111      | 00000000   | 255.255.255.0 |
- y luego se compara su bit con su bit correspondiente **_1 y 1 = 1_** y **_1 y 0 = 0_**

| Primer octeto | Segundo octeto | Tercer octeto | 4to octeto | Direccion IP  |
| :------------ | -------------- | ------------- | ---------- | ------------- |
| 11000000      | 10101000       | 00010110      | 01010111   | 192.168.22.87 |
| 11111111      | 11111111       | 11111111      | 00000000   | 255.255.255.0 |
| 11000000      | 10101000       | 00010110      | 00000000   | 192.168.22.00 |

<p>🗣️En esta clase aprendimos las clases de ip y para que se usan, la clase A, B y C son de uso publico mientras que las D y E estan reservadas y nuestro provedor de internet no nos podria dar acceso a ellas. las redes clase A pueden tener mas de 1 millon y medio de conexiones mientas que las tipo C apenas 254 conexiones</p>

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
tendrian esto valores porque en el sistema binario cada digito es una potenida de 2 del anterior, y se lee de derecha a izquierda, asi



|   128   |   64    |   32    |   16    |    8    |    4    |    2    |      1      |
| :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :-----: | :---------: |
| $$2^8$$ | $$2^7$$ | $$2^6$$ | $$2^5$$ | $$2^4$$ | $$2^3$$ | $$2^2$$ | $$2^1$$<br> |


Debido a esto, el numero maximo de ips que se puede tener es `255.255.255.255` 
- Aunque no se pueden utilizar todas, las ips trabajan con un rango y cada rango es para funciones especificas.
- los 3 primeros numeros (de izquierda a derecha) corresponden a la red, y el ultimo numero de la derecha, corresponde la host.

# #EnseñanzaFinal 

<p>🗣️En esta clase aprendimos que las direcciones ip son la manera que las computadoras se comunican por internet, que una ip es diferente al protocolo ip, el cual se encarga de rutear la informacion, es decir, como y por donde se va a enviar, que una direccion ip es un conjunto de 4 bytes, que cada uno puede tener un valor maximo de 255 pero que ese no es el numero maximo de direcciones ips porque hay ips reservadas y que los primeros 3 numeros de la izquierda corresponden a la red y el ultimo de la derecha al host</p>