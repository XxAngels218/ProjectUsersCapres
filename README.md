# ProjectUsersCapres

Asegúrate de tener instalados los siguientes requisitos en tu sistema:
PHP
Composer
Laravel
Un servidor web (como Apache o Nginx)
Un sistema de gestión de bases de datos (como MySQL o PostgreSQL)

# Como Clonarlo en Local

Primero cambiate a la carpeta AppUsers como se muestra abajo desde consola

cd AppUsers

Renombra el archivo .env.example a .env

Con respecto a la base de datos en el .env agregas la informacion para acceder a tu base y solo necesitas crear una base de datos vacia que se llame laravel desde tu gesto de base de datos

luego desde la terminal corremos 

composer install

php artisan key:generate

php artisan migrate

php artisan db:seed

php artisan serve

Por ultimo en el navegador abres la ruta que te proporciono y te mueves a la ruta /usuarios 
En mi caso es asi http://127.0.0.1:8000/usuarios
Ya desde ahi podras navegar todos los requerimientos necesarios

La base de datos igualmente agrego el dump por si gustan revisarlo, pero no es necesario para montarlo en local solo deben seguir los pasos que les compartir arriba.
Con mas tiempo puedo abstraer la logica de los controllers para tener un codigo aun de mas calidad, pero por la hora de entrega asi se quedo.




