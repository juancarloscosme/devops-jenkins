# Usar una imagen base de Ubuntu
FROM ubuntu:20.04

# Actualizar el sistema e instalar Apache
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Copiar archivos de la aplicación al contenedor
COPY ./mi_aplicacion /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
