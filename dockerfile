# Usa la última versión de Node.js como imagen base
FROM node:16

# Establece el directorio de trabajo en la carpeta de la aplicación
WORKDIR /app

# Copia el archivo package.json e instala las dependencias
COPY app/package*.json ./
RUN npm install

# Copia el resto de la aplicación
COPY app/ .

# Expone el puerto en el que tu aplicación se ejecuta
EXPOSE 80

# Comando para iniciar la aplicación
CMD ["node", "index.js"]
