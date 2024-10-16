# Use uma imagem base oficial do Node.js
FROM node:14

# Cria e define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instala as dependências da aplicação
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta em que a aplicação será executada
EXPOSE 3000

# Comando para iniciar a aplicação NestJS
CMD ["npm", "run", "start:prod"]
