# Asignacion de direcciones IP

| Clase | Desde     | Hasta           | Cantidades de redes | Cantidades de host | Ejemplo        |
| ----- | --------- | --------------- | ------------------- | ------------------ | -------------- |
| A     | 0.0.0.0   | 127.255.255.255 | 128                 | 1677214            | redes grandes  |
| B     | 128.0.0.0 | 191.255.255.255 | 16386               | 65534              | Redes medianas |
| C     | 192.0.0.0 | 223.255.255.255 | 2097152             | 254                | Redes pequeñas |
| D     | 224.0.0.0 | 239.255.255.255 | NA                  | NA                 | Multicast      |
| E     | 240.0.0.0 | 255.255.255.255 | NA                  | NA                 | Investigacion  |
- *El intervalo de 127.0.0.0 a 127.255.255.255 esta reservado como direccion de loopback y no se utiliza*
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