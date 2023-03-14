# Utilizamos una imagen base con Node.js v14
FROM node:14

# Definimos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos del proyecto al contenedor
COPY . .

# Instalamos las dependencias del proyecto
RUN npm install

# Compilamos el proyecto
RUN npm run build

# Exponemos el puerto 3000
EXPOSE 3000

# Definimos el comando para ejecutar la aplicación
CMD ["npm", "start"]
