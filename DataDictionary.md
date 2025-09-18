Data Dictionary

1. Tabla: customer
Columna	        Tipo de Dato	Clave	Nulos	Descripción
customer_id	SMALLINT	PK	No	Identificador único del cliente.
store_id	SMALLINT    FK (store)	No	La tienda a la que pertenece el cliente.
first_name	VARCHAR(45)		No	Primer nombre del cliente.
last_name	VARCHAR(45)		No	Apellido del cliente.
email	        VARCHAR(50)	        Sí	Dirección de correo electrónico del cliente.
address_id	SMALLINT   FK (address)	No	La dirección física del cliente.
active	        BOOLEAN		        No	Estado del cliente (true si está activo, false si no).
create_date	DATETIME		No	Fecha en que se creó el registro del cliente.
last_update	TIMESTAMP		No	Fecha de la última actualización del registro.




2. Tabla: film
Columna	        Tipo de Dato	Clave	Nulos	Descripción
film_id	        SMALLINT	PK	No	Identificador único de la película.
title	        VARCHAR(255)            No	Título de la película.
description	TEXT		        Sí	Descripción o sinopsis de la película.
release_year	YEAR		        Sí	Año de lanzamiento de la película.
language_id	TINYINT	FK (language)	No	Idioma original de la película.
rental_duration	TINYINT		        No	Duración de la renta en días.
rental_rate	DECIMAL(4,2)		No	Costo de la renta por la duración especificada.
length	        SMALLINT	        Sí	Duración de la película en minutos.
rating	        VARCHAR(10)	        Sí	Clasificación de la película (G, PG, R, etc.).
special_featuresVARCHAR(255)            Sí	Características especiales (tráilers, comentarios, etc.).
last_update	TIMESTAMP	        No	Fecha de la última actualización del registro.




3. Tabla: rental
Columna	       Tipo de Dato	Clave	Nulos	Descripción
rental_id	INT	        PK	No	Identificador único del alquiler.
rental_date	DATETIME		No	Fecha y hora en que se alquiló la película.
inventory_id	MEDIUMINT	FK (inventory)	No	El inventario específico (copia de la película) que se alquiló.
customer_id	SMALLINT	FK (customer)	No	Cliente que realizó el alquiler.
return_date	DATETIME		Sí	Fecha y hora en que se devolvió la película.
staff_id	TINYINT	     FK (staff)	No	Miembro del personal que procesó el alquiler.
last_update	TIMESTAMP		No	Fecha de la última actualización del registro.




4. Tabla: payment
Columna	       Tipo de Dato	Clave	Nulos	Descripción
payment_id	SMALLINT	PK	No	Identificador único del pago.
customer_id	SMALLINT  FK (customer)	No	Cliente que realizó el pago.
staff_id	TINYINT	  FK (staff)	No	Miembro del personal que procesó el pago.
rental_id	INT	  FK (rental)	Sí	Alquiler asociado con el pago.
amount	        DECIMAL(5,2)	-	No	Monto del pago.
payment_date	DATETIME	-	No	Fecha y hora del pago.
last_update	TIMESTAMP	-	No	Fecha de la última actualización del registro.




5. Tabla: inventory
Columna	       Tipo de Dato	Clave	Nulos	Descripción
inventory_id	MEDIUMINT	PK	No	Identificador único para cada copia de una película.
film_id	        SMALLINT    FK (film)	No	La película a la que pertenece esta copia.
store_id	TINYINT	    FK (store)	No	La tienda donde se encuentra esta copia.
last_update	TIMESTAMP		No	Fecha de la última actualización del registro.




6. Tabla: store
Columna	        Tipo de Dato	Clave	Nulos	Descripción
store_id	TINYINT	PK	No	Identificador único de la tienda.
manager_staff_idTINYINT	FK (staff)No	Miembro del personal que dirige la tienda.
address_id	SMALLINT	FK (address)	No	Dirección de la tienda.
last_update	TIMESTAMP	-        No	Fecha de la última actualización del registro.




7. Tabla: actor
Columna	       Tipo de Dato	Clave	Nulos	Descripción
actor_id	SMALLINT	PK	No	Identificador único del actor.
first_name	VARCHAR(45)		No	Primer nombre del actor.
last_name	VARCHAR(45)		No	Apellido del actor.
last_update	TIMESTAMP		No	Fecha de la última actualización del registro.




Estas tablas (film_actor y film_category) son cruciales para vincular registros de tablas de muchos a muchos.

-film_actor: Vincula las películas con sus actores.

 actor_id (FK a actor)

 film_id (FK a film)

-film_category: Vincula las películas con sus categorías.

 film_id (FK a film)

 category_id (FK a category)

