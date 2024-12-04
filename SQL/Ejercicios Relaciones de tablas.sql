
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.

select t."Name" , a."Title" 
from "Track" t 
inner join "Album" a 
on t."TrackId" = a."AlbumId"; 

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.

select a."Name" as "Nombre" , a2."Title" as "Titulo" 
from "Artist" a 
inner join "Album" a2 
on a."ArtistId" = a2."AlbumId"; 

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 

select concat(c."FirstName", ' ' , c."LastName"), i."Total" 
from "Customer" c 
inner join "Invoice" i 
on c."CustomerId" = i."InvoiceId"
order by "Total" desc 
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.

select concat(e."FirstName", ' ', e."LastName") as "Nombre_empleado", concat(c."FirstName", ' ', c."LastName") as "Nombre_cliente"
from "Employee" e 
inner join "Customer" c 
on e."EmployeeId" = c."CustomerId" ;

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.

select "InvoiceId" , t."Name" 
from "Track" t 
inner join "Invoice" i 
on t."TrackId" = i."InvoiceId" ;

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.

select a."Name" as "Nombre", t."GenreId" 
from "Artist" a 
inner join "Track" t 
on a."ArtistId" = t."TrackId" 
order by "GenreId" ;

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.

select t."Name" , t."MediaTypeId" 
from "Track" t 
order by t."MediaTypeId" desc ;

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**

select t."Name" , g."GenreId" 
from "Track" t 
left join "Genre" g 
on t."TrackId" = g."GenreId"; 


-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.

select c."FirstName" , sum(i."CustomerId") 
from "Customer" c
left join "Invoice" i 
on c."CustomerId" = i."InvoiceId" 
group by c."FirstName", i."CustomerId" 
order by i."CustomerId";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).

select a."Title" , a2."Name" 
from "Album" a 
left join "Artist" a2 
on a."AlbumId" = a2."ArtistId" ;

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 

select count("TrackId") as "total_canciones" , "GenreId"
from "Track" t 
group by "GenreId" 
order by "total_canciones" desc ;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.

select a."Title" as "Album" , sum(t."Milliseconds") as "tiempo_total" 
from "Track" t 
left join "Album" a 
on t."TrackId" = a."AlbumId" 
group by a."Title"
order by "tiempo_total" desc ;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.

select concat(c."FirstName", ' ', c."LastName" ) as "nombre", i."Total" 
from "Customer" c 
left join "Invoice" i 
on c."CustomerId" = i."InvoiceId"
order by "Total" ;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.

select concat(e."FirstName", ' ', e."LastName") as "nombre_empleado", concat(c."FirstName", ' ', c."LastName") as "cliente_asignado"
from "Employee" e 
left join "Customer" c 
on e."EmployeeId" = c."CustomerId" 
order by "nombre_empleado";



