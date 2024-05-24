------------    
- Tags: #SQL #Vulnerabilidades #Web 
------------    


# Descripcion

La inyeccion SQL ocurre cuando las entrada de usuario no son adecuadamente sanitizadas antes de ser utilizadas en una consulta de SQL. Esto permite a un atacante manipular la consulta y potencialmente acceder o modificar datos en la base de datos sin autorizacion.

# Prevencion: 

- Sanitizar y validar las entradas del usuario.
- Utilizar consultas preparadas y parametros en lugar de concatenar strings.
- Aplicar el principio de menor privilegio a las cuentas de bases de datos.

# Herramientas utiles: 

- [[SQLMap]]
- [[OWASP ZAP]]



