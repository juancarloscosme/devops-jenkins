# Usar la imagen oficial de Nginx como base
FROM nginx:alpine

# Copiar el archivo de configuración de Nginx (opcional)
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar los archivos estáticos a la carpeta predeterminada de Nginx
COPY html /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]

