# Etapa 1: Construccion (Build)
FROM node:20-alpine AS build

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del codigo fuente
COPY . .

# Generar el build de produccion
RUN npm run build -- --configuration production

# Etapa 2: Servidor Web (Nginx)
FROM nginx:alpine

# Copiar los archivos construidos desde la etapa anterior
# NOTA: Asegurate de que la ruta 'dist/tu-proyecto/browser' coincida con tu carpeta de salida
COPY --from=build /app/dist/*/browser /usr/share/nginx/html

# Copiar la configuracion personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponer el puerto 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]