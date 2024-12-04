
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.

select "Title" as "Nombre_Album"
from "Album" a 
order by "Title" ;

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.

select max("AlbumId") 
from "Track" t ;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.

select "Composer" as "Compositor", avg("Milliseconds") as "Media", stddev("Milliseconds") as "Desviación_estandar", variance("Milliseconds") as "Varianza" 
from "Track" t 
group by "Composer" ;

-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.

select "Name" as "Título", "UnitPrice" as "Precio_pistas"
from "Track"
limit 10;

select "Name" as "Título", "UnitPrice" as "Precio_pistas"
from "Track"
order by "Name"
limit 10;
  
-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.

select concat("FirstName", ' ',"LastName") 
from "Employee" e 
order by "EmployeeId" desc ;

-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.

select "Name" as "Nombre"
from "Genre" g ;

 
-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.

select "FirstName" as "Nombre", "Country" as "País"
from "Customer" c 
order by "FirstName" 
limit 5;

-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.

select "Country" as "País", count("FirstName") as "Clientes" 
from "Customer" c 
group by "Country" ;

-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.

select "BillingCountry" as "País", sum("Total") 
from "Invoice" i 
where "Total" > 10
group by "BillingCountry" ;

-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.

select "Country", count("FirstName") 
from "Customer" c
group by "Country"
having count("FirstName") > 5;

-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.
   
select "MediaTypeId", count("TrackId")
from "Track" t 
where "Milliseconds" > 250000
group by "MediaTypeId" ;


-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
  
select "Country" as "País", count("FirstName") as "clientes", "SupportRepId" as "ID_asisistente" 
from "Customer" c 
where c."SupportRepId" < 5
group by "SupportRepId", "Country" ;

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.

select "BillingPostalCode" , count("CustomerId") 
from "Invoice" i 
where "CustomerId" > 5
group by "BillingPostalCode"; 

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.

select "MediaTypeId" as "TipoMedio" , count("Name") as "Cantidad"
from "Track" t 
where "UnitPrice" > 0.99 and "Milliseconds" > 200000
group by "MediaTypeId" ;

-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.

select "Country" as "País", "State" as "Estado", "SupportRepId"  
from "Customer" c 
where "CustomerId" > 3 and c."Company" <> 'NULL'
group by "Country", "State", "SupportRepId" ;
