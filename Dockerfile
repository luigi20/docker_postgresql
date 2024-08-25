# Use a imagem oficial do Node.js como base
FROM node:22

# Crie e defina o diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos package.json e package-lock.json
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante dos arquivos da aplicação
COPY . .

# Exponha a porta em que a aplicação estará escutando
EXPOSE 3333

# Comando para iniciar a aplicação
CMD ["npm", "start"]