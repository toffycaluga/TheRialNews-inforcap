# TheRialNews

TheRialNews es una plataforma de noticias satíricas donde se informa a los usuarios sobre actualidad y eventos de una manera humorística. El objetivo es mantener un lugar abierto para la libertad de expresión, siempre respetando la integridad y los principios de otras personas.

## Requerimientos

- Ruby version: 2.7.4
- Rails version: 6.1.4
- PostgreSQL

## Set-up inicial del proyecto

Para configurar el proyecto, sigue estos pasos:

1. Clona el repositorio desde GitHub.
   git clone https://github.com/toffycaluga/TheRialNews-inforcap.git

2. Ejecuta `bundle install` para instalar todas las gemas necesarias.
3. Ejecuta `rails db:create` para crear la base de datos
4. Ejecuta `rails db:migrate` para aplicar las migraciones de la base de datos.
5. Opcionalmente, puedes ejecutar `rails db:seed` para cargar datos de ejemplo.

## Funcionalidades

- Registro e inicio de sesión de usuarios.
- Roles de usuario con diferentes permisos (usuario registrado, administrador).
- Restablecimiento de contraseña a través del correo electrónico.
- Visualización de noticias para usuarios no registrados.
- Comentarios en las noticias para usuarios registrados.
- Administradores pueden eliminar comentarios inapropiados.

## Control de acceso y roles

El control de acceso se basa en la gema "CanCanCan", que maneja los diferentes roles de usuario y sus respectivos permisos. Los roles disponibles son:

- Usuario registrado: Puede comentar en las noticias.
- Administrador: Tiene acceso completo para eliminar comentarios inapropiados.

## Pruebas

Para ejecutar las pruebas del proyecto, simplemente utiliza el comando `rails t` . Asegúrate de que todos los tests pasen antes de realizar cambios significativos.

## Paso a paso para subir a heroku

1. Crea una cuenta o inicia sesión en Heroku en https://www.heroku.com/.

2. Una vez que hayas iniciado sesión, en el Dashboard de Heroku, haz clic en el botón "New" (Nuevo) y selecciona "Create new app" (Crear nueva app).

3. En la página "Create new app", ingresa un nombre para tu aplicación y selecciona la región más adecuada.

4. Luego, en la pestaña "Deploy" (Desplegar) de la página de tu aplicación, en la sección "Deployment method" (Método de despliegue), elige la opción "GitHub" (también puedes elegir Git si has subido el código a GitHub previamente).

5. Conecta tu cuenta de GitHub a Heroku y busca el repositorio del proyecto en la lista.

6. Después de conectar el repositorio, puedes elegir entre desplegar la rama principal automáticamente o desplegar manualmente eligiendo la rama.

7. Una vez que hayas configurado el despliegue, ve a la pestaña "Settings" (Configuraciones) y haz clic en "Reveal Config Vars" (Mostrar variables de configuración).

8. Agrega todas las variables de entorno necesarias para tu aplicación. Asegúrate de configurar la clave secreta de Rails y cualquier otra variable que necesites.

9. Ahora, en la pestaña "Resources" (Recursos), asegúrate de que esté habilitado el servicio de base de datos PostgreSQL para tu aplicación. Si no lo está, agrégalo seleccionando "Heroku Postgres" en la sección "Add-ons".

10. Una vez que hayas configurado todo, haz clic en el botón "Deploy Branch" (Desplegar rama) en la pestaña "Deploy" para iniciar el despliegue de tu aplicación.

11. Heroku comenzará a desplegar la aplicación y podrás ver el progreso en los registros (logs). Si todo va bien, la aplicación debería estar disponible en la URL de Heroku.

⌨️ con ❤️ por [Toffy Caluga](https://github.com/toffycaluga)
