# Clases de direcciones


## Clase A
El primer bit del octeto esta reservado para identificar la clase

| 2^7 | 2^6 | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0 | Resultado |
| --- | --- | --- | --- | --- | --- | --- | --- | --------- |
| 128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |           |
| 0   | 0   | 0   | 0   | 0   | 0   | 0   | 1   | 1         |
| 0   | 1   | 1   | 1   | 1   | 1   | 1   | 1   | 127       |
 
**Caracteristicas**:
- El primer bit del primer octeto siempre va a ser 0.
- La mascara de red va a ser 255.0.0.0, puede cambiar hacia la derecha pero no para la izquierda.
- 16.777.214 hosts (teoricos)
- Los primeros 8 bits representan la red y los restantes 24 el host

**Restricciones**:
- La direccion 0.X.X.X nose puede utilizar por un acuerdo y el 127.X.X.X se utiliza para el localhost.

**Rango**:
- 0.0.0.0-127.255.255.255 (En teoria)

# Clase B
Los dos primeros bits del primer octeto estan reservados para identificar la clase

| 2^7 | 2^6 | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0 | Resultado |
| --- | --- | --- | --- | --- | --- | --- | --- | --------- |
| 128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |           |
| 1   | 0   | 0   | 0   | 0   | 0   | 0   | 0   | 128       |
| 1   | 0   | 1   | 1   | 1   | 1   | 1   | 1   | 191       |
**Caracteristicas**:
- El primer bit del primer octeto siempre va a ser 1, y el segundo bit 0.
- La mascara de red va a ser 255.255.0.0.
- 65,534 hosts 
- Los primeros 16 bits representan la red y los restantes 16 los hosts
  
**Restricciones**:
- Ninguna

**Rango**:
- 128.0.0.0 - 191.255.0.0

## Clase C
Los primeros tres bits del primer octeto estan reservados para identificar la clase

| 2^7 | 2^6 | 2^5 | 2^4 | 2^3 | 2^2 | 2^1 | 2^0 | Resultado |     |
| --- | --- | --- | --- | --- | --- | --- | --- | --------- | --- |
| 128 | 64  | 32  | 16  | 8   | 4   | 2   | 1   |           |     |
| 1   | 1   | 0   | 0   | 0   | 0   | 0   | 0   | 192       |     |
| 1   | 1   | 0   | 1   | 1   | 1   | 1   | 1   | 223       |     |

**Caracteristicas**:
- Mascara por defecto 255.255.255.0
- Los primeros  24 bits representan la red y los ultimos 8 representan el host
**Restricciones**:
**Rango**:
- 192.0.0.0 - 223.255.255.0
## Clase D
Los primero cuatro bits del primer octeto estan reservados para identificar la clase
**Caracteristicas**:
- Esta clase no se utiliza para redes, se utiliza para mutlticast, por lo cual no tiene mascara.
- *Multicast*:
	- Son comunicaciones entre maquinas que tienen un grupo comun. Por ejemplo, enrutadores.
**Restricciones**:
**Rango**:
- 224.0.0.0 - 239.0.0.0