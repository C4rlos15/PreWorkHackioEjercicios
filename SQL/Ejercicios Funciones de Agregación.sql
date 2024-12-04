
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.

select min("Milliseconds") as "Tiempo_mínimo"
from "Track" t ;

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.

select max("Milliseconds") as "Tiempo_máximo" 
from "Track" t ;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
   
select min("UnitPrice") as "Precio_mínimo" 
from "Track" t;

-- Ejercicio 4: Encontrar el precio máximo de las pistas.

select max("UnitPrice") as "Precio_máximo" 
from "Track" t ;

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
   
select min("InvoiceDate") as "Fecha_min_factura" 
from "Invoice" i ;

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
   
select max("InvoiceDate") as "Fecha_max_factura" 
from "Invoice" i ;


/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
   
select count("Name") as "número_total_pistas" 
from "Track" t ;

-- Ejercicio 8: Contar el número de clientes en Brasil.
 
select count("FirstName") as "Clientes_Brasil" 
from "Customer" c 
where "Country" in ('Brazil');

select count("FirstName") as "Clientes_Brasil" 
from "Customer" c 
where "Country" = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
   
select sum("Milliseconds") as "Duración_Total" 
from "Track" t ;

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
    
select count("FirstName") as "Empleados_titulados" 
from "Employee" e 
where "Title" = 'Sales Support Agent'

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
    
select sum("Total") as "Total_Facturas" 
from "Invoice" i ;

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
 
select avg("Milliseconds") as "Duración_media" 
from "Track" t ;

-- Ejercicio 13: Calcular el precio medio de las pistas.
  
select avg("UnitPrice") as "Precio_Medio" 
from "Track" t ;

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.

select stddev("Milliseconds")  
from "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.

select variance("Milliseconds") 
from "Track" t ;

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.

select stddev("UnitPrice") 
from "Track" t ;

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.

select concat("FirstName", ' ', "LastName") as "Nombre_Cliente"
from "Customer" c ;
