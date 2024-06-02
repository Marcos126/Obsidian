------------    
- Tags: #SQL #Vulnerabilidades #Web 
------------    


# Descripcion

La inyeccion SQL ocurre cuando las entrada de usuario no son adecuadamente sanitizadas antes de ser utilizadas en una consulta de SQL. Esto permite a un atacante manipular la consulta y potencialmente acceder o modificar datos en la base de datos sin autorizacion.

# Prevencion: 

- Sanitizar y validar las entradas del usuario.
- Utilizar consultas preparadas y parametros en lugar de concatenar strings.
- Aplicar el principio de menor privilegio a las cuentas de bases de datos.

# Tipos

- Inyección SQL basada en errores: Este tipo de inyección SQL aprovecha errores en el código SQL para obtener información. Por ejemplo, si una consulta devuelve un error con un mensaje específico, se puede utilizar ese mensaje para obtener información adicional del sistema.
- Inyección SQL basada en tiempo: Este tipo de inyección SQL utiliza una consulta que tarda mucho tiempo en ejecutarse para obtener información. Por ejemplo, si se utiliza una consulta que realiza una búsqueda en una tabla y se añade un retardo en la consulta, se puede utilizar ese retardo para obtener información adicional
- Inyección SQL basada en booleanos: Este tipo de inyección SQL utiliza consultas con expresiones booleanas para obtener información adicional. Por ejemplo, se puede utilizar una consulta con una expresión booleana para determinar si un usuario existe en una base de datos.
- Inyección SQL basada en uniones: Este tipo de inyección SQL utiliza la cláusula “UNION” para combinar dos o más consultas en una sola. Por ejemplo, si se utiliza una consulta que devuelve información sobre los usuarios y se agrega una cláusula “UNION” con otra consulta que devuelve información sobre los permisos, se puede obtener información adicional sobre los permisos de los usuarios.
- Inyección SQL basada en stacked queries: Este tipo de inyección SQL aprovecha la posibilidad de ejecutar múltiples consultas en una sola sentencia para obtener información adicional. Por ejemplo, se puede utilizar una consulta que inserta un registro en una tabla y luego agregar una consulta adicional que devuelve información sobre la tabla.

# Herramientas utiles: 

- [[SQLMap]]
- [[OWASP ZAP]]




