#1. pilih bahan dasar
# nodejs versi 18 dengan alpine sebagai base image
FROM node:18-alpine

#2. siapkan direktori kerja
WORKDIR /app

#3. salin file package.json dan package-lock.json ke dalam container
COPY package.json .

#4. install dependencies
RUN npm install

#5. saling source code
COPY . .

#6. dokumentasi port
EXPOSE 3001

#7. perintah untuk menjalankan aplikasi
CMD ["npm", "start"]