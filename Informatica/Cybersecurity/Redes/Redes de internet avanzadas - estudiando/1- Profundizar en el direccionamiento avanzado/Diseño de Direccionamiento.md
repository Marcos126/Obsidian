![[Pasted image 20240407010356.png]]


| Nombre         | Host x red |
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

Con la clase seleccionada, asigne parametro de red


| Lugar          | ID Red        | Broadcast     | Primer host valido | Ultimo host valido |
| -------------- | ------------- | ------------- | ------------------ | ------------------ |
| Oficina 1      | 192.168.1.0   | 192.168.1.127 | 192.168.1.1        | 192.168.1.126      |
| Oficina 2      | 192.168.1.128 | 192.168.1.159 | 192.168.1.129      | 192.168.1.158      |
| Oficina remota | 192.168.1.160 | 192.168.1.191 | 192.168.1.161      | 192.168.1.190      |
| Enlace 1       | 192.168.1.192 | 192.168.1.195 | 192.168.1.193      | 192.168.1.194      |
| Enlace 2       | 192.168.1.196 | 192.168.1.199 | 192.168.1.197      | 192.168.1.198      |
| Enlace 3       | 192.168.1.200 | 192.168.1.203 | 192.168.1.201      | 192.168.1.202      |



# DHCP
Tutorial de como configurar un servidor DHCP

Primero configuramos la direccion ip de la interfaz a la que ira dirigido el servicio de dhcp

Router#enable
Router#config t
Router(config)#interface FastEthernet0/0
Router(config-if)#ip address 192.168.1.1 255.255.255.128
Router(config-if)#no shutdown
Router(config-if)#exit

Router(config)#ip dhcp pool *namepool*
Router(config)#
Router(dhcp-config)#network 192.168.1.0 255.255.255.128
Router(dhcp-config)#default-router 192.168.1.1
Router(dhcp-config)#exit

# NAT 
El nat sirve para poder traducir una ip privada a una ip publica, en este ejemplo vamos a tener a la maquina 200.10.0.2, que esta en la interfas serial2/0 siendo un router que va a exponer la ip privada 10.0.0.254, que esta en la interfaz FastEthernet0/0 para que cuando nos conectemos a 200.10.0.2 nos muestre el servidor http que hay en 10.0.0.254

Router#enable
Router# config t
Router(config)#ip nat inside source static 10.0.0.254 200.10.0.2
Router(config)#interface FastEthernet0/0
Router(config-if)#ip nat inside
Router(config-it)#interface serial2/0
Router(config-it)#ip nat outside
## NAT Overload

Router(config)#access-list 1 permit 192.168.1.0 0.0.0.255
Router(config)#ip nat inside source list 1 interface serial2/0 overload
Router(config)#int s2/0
Router(config-if)#ip nat outside
Router(config-if)#int fa0/0
Router(config-if)#ip nat inside
Router(config-if)#copy run start
# #Repasar
Marco esta nota con este tag porque no entiendo muy bien lo que quiere representar.


17/28 6.07