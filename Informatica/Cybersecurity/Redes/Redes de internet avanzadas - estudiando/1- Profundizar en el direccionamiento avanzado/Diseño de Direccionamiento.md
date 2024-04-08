![[Pasted image 20240407010356.png]]


| Lugar          | Host x red |
| -------------- | ---------- |
| Oficina 1      | 100 host   |
| Oficina 2      | 20 host    |
| Oficina remota | 20 host    |
| Enlace         | 2 host     |
| Enlace         | 2 host     |
| Enlace         | 2 host     |
| Total          | 146 hosts  |

Esta cantidad de hosts se pueden ingresar en una clase C


| Lugar          | Host x red | Valor    | Mascara         |
| -------------- | ---------- | -------- | --------------- |
| Oficina 1      | 100 host   | $2^7 -2$ | 255.255.255.128 |
| Oficina 2      | 20 host    | $2^5 -2$ | 255.255.255.224 |
| Oficina remota | 20 host    | $2^5 -2$ | 255.255.255.224 |
| Enlace 1       | 2 host     | $2^2 -2$ | 255.255.255.252 |
| Enlace 2       | 2 host     | $2^2 -2$ | 255.255.255.252 |
| Enlace 3       | 2 host     | $2^2 -2$ | 255.255.255.252 |
|                |            |          |                 |

Con la clase seleccionada, asigne parametro de red


| Lugar          | ID Red        | Broadcast     | Primer host valido | Ultimo host valido |
| -------------- | ------------- | ------------- | ------------------ | ------------------ |
| Oficina 1      | 192.168.1.0   | 192.168.1.127 | 192.168.1.1        | 192.168.1.126      |
| Oficina 2      | 192.168.1.128 | 192.168.1.159 | 192.168.1.129      | 192.168.1.158      |
| Oficina remota | 192.168.1.160 | 192.168.1.191 | 192.168.1.161      | 192.168.1.190      |
| Enlace 1       | 192.168.1.192 | 192.168.1.195 | 192.168.1.193      | 192.168.1.194      |
| Enlace 2       | 192.168.1.196 | 192.168.1.199 | 192.168.1.197      | 192.168.1.198      |
| Enlace 3       | 192.168.1.200 | 192.168.1.203 | 192.168.1.201      | 192.168.1.202      |

# #Repasar
Marco esta nota con este tag porque no entiendo muy bien lo que quiere representar.